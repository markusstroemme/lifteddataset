@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7a046:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-27 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i32 @globalReturnsTrueOrFalse()
  %4 = call i64 @_Znam(i64 11)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %5 = bitcast ptr %stack_var_-27 to ptr
  %6 = call i32 @strlen(ptr nonnull %5)
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %dec_label_pc_7a0f5, label %dec_label_pc_7a0c7.lr.ph

dec_label_pc_7a0c7.lr.ph:                         ; preds = %dec_label_pc_7a046
  %10 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_7a0c7

dec_label_pc_7a0c7:                               ; preds = %dec_label_pc_7a0c7, %dec_label_pc_7a0c7.lr.ph
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %11 = add i64 %storemerge3.reload, %4
  %12 = add i64 %storemerge3.reload, %10
  %13 = inttoptr i64 %12 to ptr
  %14 = load i8, ptr %13, align 1
  %15 = inttoptr i64 %11 to ptr
  store i8 %14, ptr %15, align 1
  %16 = add nuw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %16, %8
  store i64 %16, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_7a0f5, label %dec_label_pc_7a0c7

dec_label_pc_7a0f5:                               ; preds = %dec_label_pc_7a0c7, %dec_label_pc_7a046
  %storemerge2 = inttoptr i64 %4 to ptr
  call void @printLine(ptr %storemerge2)
  %17 = icmp eq i64 %4, 0
  br i1 %17, label %dec_label_pc_7a114, label %dec_label_pc_7a108

dec_label_pc_7a108:                               ; preds = %dec_label_pc_7a0f5
  %18 = inttoptr i64 %4 to ptr
  %19 = and i64 %1, 4294967295
  %20 = inttoptr i64 %19 to ptr
  call void @_ZdaPv(ptr %18, ptr %20)
  br label %dec_label_pc_7a114

dec_label_pc_7a114:                               ; preds = %dec_label_pc_7a108, %dec_label_pc_7a0f5
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %2, %21
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %22, label %dec_label_pc_7a129, label %dec_label_pc_7a124

dec_label_pc_7a124:                               ; preds = %dec_label_pc_7a114
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7a129

dec_label_pc_7a129:                               ; preds = %dec_label_pc_7a124, %dec_label_pc_7a114
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

