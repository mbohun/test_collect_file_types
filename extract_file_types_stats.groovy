#!/usr/bin/env groovy
import java.io.File

def final dirToSearch = this.args.length < 1 ? '.' : this.args[0]

def extractFileTypesStats() {

try {

    def final dirToSearchFile = new File(dirToSearch)
    if (!dirToSearchFile.isDirectory()) {
        System.err.println("ERROR: This ain't no Jim Beam!")
        System.exit(-1)
    }

    System.out.println("SEARCHING DIR: ${dirToSearch}")
    //dirToSearchFile.list()
    //dirToSearchFile.list().findAll{ it[0] == 'u' }.sort().each(System.out.&println)

    def final stats = [:]

    dirToSearchFile.list().each {
        def final ext = it.substring(it.lastIndexOf('.') + 1)
        stats[ext] = stats.containsKey(ext) ? stats[ext] + 1 : 1
    }

    stats.each { key, value ->
        println "$value $key"
    }

} catch (Exception e) {
    System.err.println("ERROR: ${e}")
    System.exit(-1)
}

}

