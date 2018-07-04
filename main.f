c     Sieve of Eratosthenes
c     Find primes
      PROGRAM MAIN
      LOGICAL line(99)
      INTEGER count, max

c     Highest number to check for primeness
c     Must equal line array size plus one
      max = 100
      
c     Populate array
      DO 10 count = 2, max
         line(count) = .TRUE.
 10   CONTINUE

c     Cancel out multiples of two
      DO 20 count = 4, max, 2
         line(count) = .FALSE.
 20   CONTINUE

c     Cancel out multiples of three
      DO 30 count = 6, max, 3
         line(count) = .FALSE.
 30   CONTINUE

c     Cancel out multiples of five
      DO 40 count = 10, max, 5
         line(count) = .FALSE.
 40   CONTINUE

c     Cancel out multiples of seven
      DO 50 count = 14, max, 7
         line(count) = .FALSE.
 50   CONTINUE

c     Print all primes in array
      DO 60 count = 2, max
         IF (line(count) .EQV. .TRUE.) THEN
            PRINT *, count
         ELSE
            CONTINUE
         ENDIF
 60   CONTINUE

      END
         
         
         
