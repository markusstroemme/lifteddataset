@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7d83c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 10)
  %2 = bitcast ptr %stack_var_-56 to ptr
  %3 = call i64 @anon1(ptr nonnull %2)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_7d896, label %dec_label_pc_7d891

dec_label_pc_7d891:                               ; preds = %dec_label_pc_7d83c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d896

dec_label_pc_7d896:                               ; preds = %dec_label_pc_7d891, %dec_label_pc_7d83c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_7d904:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %arg1 to i64
  %stack_var_-27 = alloca i64, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = add i64 %2, 16
  %5 = inttoptr i64 %4 to ptr
  %6 = load i64, ptr %5, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %7 = bitcast ptr %stack_var_-27 to ptr
  %8 = call i32 @strlen(ptr nonnull %7)
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %9, 1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %dec_label_pc_7d98f, label %dec_label_pc_7d961.lr.ph

dec_label_pc_7d961.lr.ph:                         ; preds = %dec_label_pc_7d904
  %12 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_7d961

dec_label_pc_7d961:                               ; preds = %dec_label_pc_7d961, %dec_label_pc_7d961.lr.ph
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %13 = add i64 %storemerge2.reload, %6
  %14 = add i64 %storemerge2.reload, %12
  %15 = inttoptr i64 %14 to ptr
  %16 = load i8, ptr %15, align 1
  %17 = inttoptr i64 %13 to ptr
  store i8 %16, ptr %17, align 1
  %18 = add nuw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %18, %10
  store i64 %18, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_7d98f, label %dec_label_pc_7d961

dec_label_pc_7d98f:                               ; preds = %dec_label_pc_7d961, %dec_label_pc_7d904
  %19 = inttoptr i64 %6 to ptr
  call void @printLine(ptr %19)
  %20 = icmp eq i64 %6, 0
  br i1 %20, label %dec_label_pc_7d9ae, label %dec_label_pc_7d9a2

dec_label_pc_7d9a2:                               ; preds = %dec_label_pc_7d98f
  %21 = inttoptr i64 %6 to ptr
  %22 = and i64 %1, 4294967295
  %23 = inttoptr i64 %22 to ptr
  call void @_ZdaPv(ptr %21, ptr %23)
  br label %dec_label_pc_7d9ae

dec_label_pc_7d9ae:                               ; preds = %dec_label_pc_7d9a2, %dec_label_pc_7d98f
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %3, %24
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %25, label %dec_label_pc_7d9c3, label %dec_label_pc_7d9be

dec_label_pc_7d9be:                               ; preds = %dec_label_pc_7d9ae
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d9c3

dec_label_pc_7d9c3:                               ; preds = %dec_label_pc_7d9be, %dec_label_pc_7d9ae
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

