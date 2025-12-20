@global_var_fff = external global ptr
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_11710:
  %rsp.0.reg2mem = alloca i64, align 8
  %dataBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_11759

dec_label_pc_11759:                               ; preds = %dec_label_pc_11759, %dec_label_pc_11710
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_11770, label %dec_label_pc_11759

dec_label_pc_11770:                               ; preds = %dec_label_pc_11759
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  %7 = inttoptr i64 %5 to ptr
  %8 = call ptr @memset(ptr %7, i32 65, i32 99)
  %9 = add i64 %5, 99
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  store ptr %6, ptr %dataBuffer_-40, align 8
  call void @anon1(i64 %5)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  br i1 %12, label %dec_label_pc_117ff, label %dec_label_pc_117fa

dec_label_pc_117fa:                               ; preds = %dec_label_pc_11770
  call void @__stack_chk_fail()
  br label %dec_label_pc_117ff

dec_label_pc_117ff:                               ; preds = %dec_label_pc_117fa, %dec_label_pc_11770
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_11907:
  %.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = inttoptr i64 %myStruct to ptr
  %2 = call i32 @strlen(ptr %1)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_119a8, label %dec_label_pc_1197e.lr.ph

dec_label_pc_1197e.lr.ph:                         ; preds = %dec_label_pc_11907
  %4 = sext i32 %2 to i64
  %5 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_1197e

dec_label_pc_1197e:                               ; preds = %dec_label_pc_1197e.lr.ph, %dec_label_pc_1197e
  %.reload = load i64, ptr %.reg2mem, align 8
  %6 = add i64 %.reload, %myStruct
  %7 = inttoptr i64 %6 to ptr
  %8 = load i8, ptr %7, align 1
  %9 = add i64 %.reload, %5
  %10 = inttoptr i64 %9 to ptr
  store i8 %8, ptr %10, align 1
  %11 = add nuw i64 %.reload, 1
  %12 = icmp ult i64 %11, %4
  store i64 %11, ptr %.reg2mem, align 8
  br i1 %12, label %dec_label_pc_1197e, label %dec_label_pc_119a8

dec_label_pc_119a8:                               ; preds = %dec_label_pc_1197e, %dec_label_pc_11907
  call void @printLine(ptr %1)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_119cd, label %dec_label_pc_119c8

dec_label_pc_119c8:                               ; preds = %dec_label_pc_119a8
  call void @__stack_chk_fail()
  br label %dec_label_pc_119cd

dec_label_pc_119cd:                               ; preds = %dec_label_pc_119c8, %dec_label_pc_119a8
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

