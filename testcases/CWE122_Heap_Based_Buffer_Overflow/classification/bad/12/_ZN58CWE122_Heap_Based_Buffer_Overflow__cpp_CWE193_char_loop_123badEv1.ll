@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_79f61:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %storemerge2.in.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-27 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i32 @globalReturnsTrueOrFalse()
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_79fa2, label %dec_label_pc_79f92

dec_label_pc_79f92:                               ; preds = %dec_label_pc_79f61
  %7 = call i64 @_Znam(i64 10)
  store i64 %7, ptr %storemerge2.in.reg2mem, align 8
  br label %dec_label_pc_79fb0

dec_label_pc_79fa2:                               ; preds = %dec_label_pc_79f61
  %8 = call i64 @_Znam(i64 11)
  store i64 %8, ptr %storemerge2.in.reg2mem, align 8
  br label %dec_label_pc_79fb0

dec_label_pc_79fb0:                               ; preds = %dec_label_pc_79fa2, %dec_label_pc_79f92
  %storemerge2.in.reload = load i64, ptr %storemerge2.in.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %9 = bitcast ptr %stack_var_-27 to ptr
  %10 = call i32 @strlen(ptr nonnull %9)
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %dec_label_pc_7a010, label %dec_label_pc_79fe2.lr.ph

dec_label_pc_79fe2.lr.ph:                         ; preds = %dec_label_pc_79fb0
  %14 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_79fe2

dec_label_pc_79fe2:                               ; preds = %dec_label_pc_79fe2, %dec_label_pc_79fe2.lr.ph
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %15 = add i64 %storemerge3.reload, %storemerge2.in.reload
  %16 = add i64 %storemerge3.reload, %14
  %17 = inttoptr i64 %16 to ptr
  %18 = load i8, ptr %17, align 1
  %19 = inttoptr i64 %15 to ptr
  store i8 %18, ptr %19, align 1
  %20 = add nuw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %20, %12
  store i64 %20, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_7a010, label %dec_label_pc_79fe2

dec_label_pc_7a010:                               ; preds = %dec_label_pc_79fe2, %dec_label_pc_79fb0
  %storemerge2 = inttoptr i64 %storemerge2.in.reload to ptr
  call void @printLine(ptr %storemerge2)
  %21 = icmp eq i64 %storemerge2.in.reload, 0
  br i1 %21, label %dec_label_pc_7a02f, label %dec_label_pc_7a023

dec_label_pc_7a023:                               ; preds = %dec_label_pc_7a010
  %22 = inttoptr i64 %storemerge2.in.reload to ptr
  %23 = and i64 %1, 4294967295
  %24 = inttoptr i64 %23 to ptr
  call void @_ZdaPv(ptr %22, ptr %24)
  br label %dec_label_pc_7a02f

dec_label_pc_7a02f:                               ; preds = %dec_label_pc_7a023, %dec_label_pc_7a010
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %2, %25
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %26, label %dec_label_pc_7a044, label %dec_label_pc_7a03f

dec_label_pc_7a03f:                               ; preds = %dec_label_pc_7a02f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7a044

dec_label_pc_7a044:                               ; preds = %dec_label_pc_7a03f, %dec_label_pc_7a02f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_920f2:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

