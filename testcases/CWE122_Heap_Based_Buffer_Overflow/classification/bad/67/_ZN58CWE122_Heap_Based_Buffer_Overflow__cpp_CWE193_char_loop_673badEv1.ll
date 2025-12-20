@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7da86:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 10)
  %2 = call i64 @anon1(i64 %1)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_7dae0, label %dec_label_pc_7dadb

dec_label_pc_7dadb:                               ; preds = %dec_label_pc_7da86
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7dae0

dec_label_pc_7dae0:                               ; preds = %dec_label_pc_7dadb, %dec_label_pc_7da86
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_7db4e:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-27 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %3 = bitcast ptr %stack_var_-27 to ptr
  %4 = call i32 @strlen(ptr nonnull %3)
  %5 = sext i32 %4 to i64
  %6 = add nsw i64 %5, 1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %dec_label_pc_7dbd5, label %dec_label_pc_7dba7.lr.ph

dec_label_pc_7dba7.lr.ph:                         ; preds = %dec_label_pc_7db4e
  %8 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_7dba7

dec_label_pc_7dba7:                               ; preds = %dec_label_pc_7dba7, %dec_label_pc_7dba7.lr.ph
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %9 = add i64 %storemerge1.reload, %arg1
  %10 = add i64 %storemerge1.reload, %8
  %11 = inttoptr i64 %10 to ptr
  %12 = load i8, ptr %11, align 1
  %13 = inttoptr i64 %9 to ptr
  store i8 %12, ptr %13, align 1
  %14 = add nuw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %14, %6
  store i64 %14, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_7dbd5, label %dec_label_pc_7dba7

dec_label_pc_7dbd5:                               ; preds = %dec_label_pc_7dba7, %dec_label_pc_7db4e
  %15 = inttoptr i64 %arg1 to ptr
  call void @printLine(ptr %15)
  %16 = icmp eq i64 %arg1, 0
  br i1 %16, label %dec_label_pc_7dbf4, label %dec_label_pc_7dbe8

dec_label_pc_7dbe8:                               ; preds = %dec_label_pc_7dbd5
  %17 = inttoptr i64 %arg1 to ptr
  %18 = and i64 %1, 4294967295
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %17, ptr %19)
  br label %dec_label_pc_7dbf4

dec_label_pc_7dbf4:                               ; preds = %dec_label_pc_7dbe8, %dec_label_pc_7dbd5
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %2, %20
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %21, label %dec_label_pc_7dc09, label %dec_label_pc_7dc04

dec_label_pc_7dc04:                               ; preds = %dec_label_pc_7dbf4
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7dc09

dec_label_pc_7dc09:                               ; preds = %dec_label_pc_7dc04, %dec_label_pc_7dbf4
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

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

