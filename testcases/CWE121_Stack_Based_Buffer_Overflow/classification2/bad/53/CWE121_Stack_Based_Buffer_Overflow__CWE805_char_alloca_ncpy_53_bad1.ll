@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_358ed:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_35936

dec_label_pc_35936:                               ; preds = %dec_label_pc_35936, %dec_label_pc_358ed
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3594d, label %dec_label_pc_35936

dec_label_pc_3594d:                               ; preds = %dec_label_pc_35936
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %dataGoodBuffer_-40, align 8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_359b8

dec_label_pc_359b8:                               ; preds = %dec_label_pc_359b8, %dec_label_pc_3594d
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %8 = icmp eq i64 %rsp.1.reload, %4
  %9 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %9, ptr %rsp.1.reg2mem, align 8
  br i1 %8, label %dec_label_pc_359cf, label %dec_label_pc_359b8

dec_label_pc_359cf:                               ; preds = %dec_label_pc_359b8
  store i8 0, ptr %7, align 16
  call void @anon1(ptr %7)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_35a3c, label %dec_label_pc_35a37

dec_label_pc_35a37:                               ; preds = %dec_label_pc_359cf
  call void @__stack_chk_fail()
  br label %dec_label_pc_35a3c

dec_label_pc_35a3c:                               ; preds = %dec_label_pc_35a37, %dec_label_pc_359cf
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_35ba4:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_35be2:
  call void @anon3(ptr %data)
  ret void
}

define void @anon3(ptr %data) local_unnamed_addr {
dec_label_pc_35c20:
  %0 = ptrtoint ptr %data to i64
  %stack_var_-120 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = bitcast ptr %stack_var_-120 to ptr
  %4 = call ptr @strncpy(ptr %data, ptr nonnull %3, i32 99)
  %5 = add i64 %0, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  call void @printLine(ptr %data)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_35c9d, label %dec_label_pc_35c98

dec_label_pc_35c98:                               ; preds = %dec_label_pc_35c20
  call void @__stack_chk_fail()
  br label %dec_label_pc_35c9d

dec_label_pc_35c9d:                               ; preds = %dec_label_pc_35c98, %dec_label_pc_35c20
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6d99d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6d9c0, label %dec_label_pc_6d9b4

dec_label_pc_6d9b4:                               ; preds = %dec_label_pc_6d99d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6d9c0

dec_label_pc_6d9c0:                               ; preds = %dec_label_pc_6d9b4, %dec_label_pc_6d99d
  ret void
}

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

