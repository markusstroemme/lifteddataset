@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_7bf3c:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = call i64 @_Znam(i64 10)
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  ret i64 %0
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_7bf63:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %.lcssa.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %.reg2mem = alloca ptr, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-56 = alloca ptr, align 8
  %2 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-56, align 8
  %3 = call i64 @anon0(ptr nonnull %stack_var_-56)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %4 = bitcast ptr %stack_var_-27 to ptr
  %5 = call i32 @strlen(ptr nonnull %4)
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %6, 1
  %8 = icmp eq i64 %7, 0
  %9 = load ptr, ptr %stack_var_-56, align 8
  store ptr %9, ptr %.lcssa.reg2mem, align 8
  br i1 %8, label %dec_label_pc_7bff2, label %dec_label_pc_7bfc4.lr.ph

dec_label_pc_7bfc4.lr.ph:                         ; preds = %dec_label_pc_7bf63
  %10 = ptrtoint ptr %stack_var_-27 to i64
  store ptr %9, ptr %.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_7bfc4

dec_label_pc_7bfc4:                               ; preds = %dec_label_pc_7bfc4, %dec_label_pc_7bfc4.lr.ph
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %11 = ptrtoint ptr %.reload to i64
  %12 = add i64 %storemerge2.reload, %11
  %13 = add i64 %storemerge2.reload, %10
  %14 = inttoptr i64 %13 to ptr
  %15 = load i8, ptr %14, align 1
  %16 = inttoptr i64 %12 to ptr
  store i8 %15, ptr %16, align 1
  %17 = add nuw i64 %storemerge2.reload, 1
  %18 = load ptr, ptr %stack_var_-56, align 8
  %exitcond = icmp eq i64 %17, %7
  store ptr %18, ptr %.reg2mem, align 8
  store i64 %17, ptr %storemerge2.reg2mem, align 8
  store ptr %18, ptr %.lcssa.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_7bff2, label %dec_label_pc_7bfc4

dec_label_pc_7bff2:                               ; preds = %dec_label_pc_7bfc4, %dec_label_pc_7bf63
  %.lcssa.reload = load ptr, ptr %.lcssa.reg2mem, align 8
  call void @printLine(ptr %.lcssa.reload)
  %19 = load ptr, ptr %stack_var_-56, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %dec_label_pc_7c013, label %dec_label_pc_7c007

dec_label_pc_7c007:                               ; preds = %dec_label_pc_7bff2
  %21 = bitcast ptr %19 to ptr
  %22 = and i64 %1, 4294967295
  %23 = inttoptr i64 %22 to ptr
  call void @_ZdaPv(ptr %21, ptr %23)
  br label %dec_label_pc_7c013

dec_label_pc_7c013:                               ; preds = %dec_label_pc_7c007, %dec_label_pc_7bff2
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %2, %24
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %25, label %dec_label_pc_7c028, label %dec_label_pc_7c023

dec_label_pc_7c023:                               ; preds = %dec_label_pc_7c013
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7c028

dec_label_pc_7c028:                               ; preds = %dec_label_pc_7c023, %dec_label_pc_7c013
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

