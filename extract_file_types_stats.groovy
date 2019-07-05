#!/usr/bin/env groovy
import java.io.File

def extractFileTypesStats(file, stats) {
    System.out.println("PROCESSING: $file");

    try {
        def final startFile = new File(file)
        if (startFile.isDirectory()) {
            startFile.list().each {
                extractFileTypesStats(it, stats)
            }
        } else {
            def final ext = file.substring(file.lastIndexOf('.') + 1)
            stats[ext] = stats.containsKey(ext) ? stats[ext] + 1 : 1
        }
    } catch (Exception e) {
        System.err.println("ERROR: ${e}")
        System.exit(-1)
    }
}

def final stats = [:]
def final start = this.args.length < 1 ? '.' : this.args[0]

extractFileTypesStats(start, stats)

stats.each { key, value ->
    println "$value $key"
}
