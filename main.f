c     Sieve of Eratosthenes
c     Find primes
      PROGRAM MAIN
      INTEGER count, max
      INTEGER line(99)

c     Highest number to check for primeness
c     Must equal line array size plus one
      max = 100
      
c     Populate array
      DO 10 count = 2, max
         line(count) = count
 10   CONTINUE

c     Cancel out multiples of two
      DO 20 count = 4, max, 2
         line(count) = 0
 20   CONTINUE

c     Cancel out multiples of three
      DO 30 count = 6, max, 3
         line(count) = 0
 30   CONTINUE

c     Cancel out multiples of 5
      DO 40 COUNT = 10, max, 5
         line(count) = 0
 40   CONTINUE

c     Cancel out multiples of 7
      DO 50 COUNT = 14, max, 7
         line(count) = 0
 50   CONTINUE

      DO 60 count = 2, max
         IF (line(count) .NE. 0) THEN
            PRINT *, line(count)
         ELSE
            CONTINUE
         ENDIF
 60   CONTINUE

      END
         
         
         
