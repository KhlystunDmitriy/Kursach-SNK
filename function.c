int log1 (int i, int k)
{
    int log = 0;
    /*
    1) i < 1
    2) i = 1
    3) k < 1
     */
    if (i < 1)
        log = -1;
    if (i == 1)
        log = -2;
    if (k < 1)
        log = -3;
    if (log == 0)
        while (k >= i)
        {
            k = k / i;
            log++;
        }
    return log;
}
