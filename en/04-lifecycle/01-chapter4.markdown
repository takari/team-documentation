# The Takari Lifecycle

TDM includes an optimized replacement for the Maven default lifecycle. It
introduces fully incremental build behavior, simplified configuration and higher
performance with a smaller footprint of dependencies needed for the execution
paired with IDE support.

## Activating the Lifecycle

In order to take advantage of the improved lifecycle you have to add the
activate it by adding the takari-lifecyclemapping plugin as a build extension.

    <build>
      <plugins>
        <plugin>
          <groupId>io.takari.maven.plugins</groupId>
          <artifactId>takari-lifecycle-plugin</artifactId>
          <extensions>true</extensions>
        </plugin>
      </plugins>
    </build>


