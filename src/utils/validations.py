import validators


def valide_str_dct(dct: dict) -> bool:
    ans = True
    for keys in dct:
        if type(dct[keys]) is not str:
            ans = False
            break
    return ans


def valide_void_dct(dct: dict) -> bool:
    ans = False
    for keys in dct:
        if dct[keys] is '':
            ans = True
            break
    return ans


def valide_keys_in(dct: dict, required: list) -> bool:
    ans = True
    for keys in required:
        if keys not in dct:
            ans = False
            break
    return ans


def valide_url(url: str) -> bool:
    result = validators.url(str(url))
    if not result:
        return False
    else:
        return True
