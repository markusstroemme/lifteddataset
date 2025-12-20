define void @anon0() local_unnamed_addr {
dec_label_pc_139d6:
  %storemerge3.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-128 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_13a24, label %dec_label_pc_13a1a

dec_label_pc_13a1a:                               ; preds = %dec_label_pc_139d6
  call void @exit(i32 -1)
  unreachable

dec_label_pc_13a24:                               ; preds = %dec_label_pc_139d6
  %4 = bitcast ptr %1 to ptr
  store i8 0, ptr %4, align 1
  %.cast = ptrtoint ptr %1 to i64
  %5 = bitcast ptr %stack_var_-128 to ptr
  store i64 %.cast, ptr %5, align 8
  %6 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %7 = ptrtoint ptr %stack_var_-120 to i64
  store i64 %.cast, ptr %.reg2mem, align 8
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_13a68

dec_label_pc_13a68:                               ; preds = %dec_label_pc_13a24, %dec_label_pc_13a68
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %.reload = load i64, ptr %.reg2mem, align 8
  %8 = ptrtoint ptr %storemerge3.reload to i64
  %9 = add i64 %.reload, %8
  %10 = add i64 %8, %7
  %11 = inttoptr i64 %10 to ptr
  %12 = load i8, ptr %11, align 1
  %13 = inttoptr i64 %9 to ptr
  store i8 %12, ptr %13, align 1
  %14 = add i64 %8, 1
  %15 = inttoptr i64 %14 to ptr
  %16 = icmp ugt ptr %15, inttoptr (i64 99 to ptr)
  %17 = load ptr, ptr %stack_var_-128, align 8
  %18 = ptrtoint ptr %17 to i64
  store i64 %18, ptr %.reg2mem, align 8
  store ptr %15, ptr %storemerge3.reg2mem, align 8
  br i1 %16, label %dec_label_pc_13a9b, label %dec_label_pc_13a68

dec_label_pc_13a9b:                               ; preds = %dec_label_pc_13a68
  %19 = add i64 %18, 99
  %20 = inttoptr i64 %19 to ptr
  store i8 0, ptr %20, align 1
  %21 = load ptr, ptr %stack_var_-128, align 8
  call void @printLine(ptr %21)
  %22 = bitcast ptr %21 to ptr
  call void @free(ptr %22)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  br i1 %24, label %dec_label_pc_13ad3, label %dec_label_pc_13ace

dec_label_pc_13ace:                               ; preds = %dec_label_pc_13a9b
  call void @__stack_chk_fail()
  br label %dec_label_pc_13ad3

dec_label_pc_13ad3:                               ; preds = %dec_label_pc_13ace, %dec_label_pc_13a9b
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

