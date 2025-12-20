@0 = external global i32
@global_var_dc064 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7922b:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-56.0.reg2mem = alloca ptr, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-27 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = load i32, ptr @global_var_dc064, align 4
  %4 = icmp eq i32 %3, 5
  %5 = icmp eq i1 %4, false
  store ptr null, ptr %stack_var_-56.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_79267, label %dec_label_pc_79259

dec_label_pc_79259:                               ; preds = %dec_label_pc_7922b
  %6 = call i64 @_Znam(i64 10)
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %stack_var_-56.0.reg2mem, align 8
  br label %dec_label_pc_79267

dec_label_pc_79267:                               ; preds = %dec_label_pc_79259, %dec_label_pc_7922b
  %stack_var_-56.0.reload = load ptr, ptr %stack_var_-56.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %8 = bitcast ptr %stack_var_-27 to ptr
  %9 = call i32 @strlen(ptr nonnull %8)
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %10, 1
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %dec_label_pc_792c7, label %dec_label_pc_79299.lr.ph

dec_label_pc_79299.lr.ph:                         ; preds = %dec_label_pc_79267
  %13 = ptrtoint ptr %stack_var_-56.0.reload to i64
  %14 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_79299

dec_label_pc_79299:                               ; preds = %dec_label_pc_79299, %dec_label_pc_79299.lr.ph
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %15 = add i64 %storemerge2.reload, %13
  %16 = add i64 %storemerge2.reload, %14
  %17 = inttoptr i64 %16 to ptr
  %18 = load i8, ptr %17, align 1
  %19 = inttoptr i64 %15 to ptr
  store i8 %18, ptr %19, align 1
  %20 = add nuw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %20, %11
  store i64 %20, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_792c7, label %dec_label_pc_79299

dec_label_pc_792c7:                               ; preds = %dec_label_pc_79299, %dec_label_pc_79267
  call void @printLine(ptr %stack_var_-56.0.reload)
  %21 = icmp eq ptr %stack_var_-56.0.reload, null
  br i1 %21, label %dec_label_pc_792e6, label %dec_label_pc_792da

dec_label_pc_792da:                               ; preds = %dec_label_pc_792c7
  %22 = bitcast ptr %stack_var_-56.0.reload to ptr
  %23 = and i64 %1, 4294967295
  %24 = inttoptr i64 %23 to ptr
  call void @_ZdaPv(ptr %22, ptr %24)
  br label %dec_label_pc_792e6

dec_label_pc_792e6:                               ; preds = %dec_label_pc_792da, %dec_label_pc_792c7
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %2, %25
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %26, label %dec_label_pc_792fb, label %dec_label_pc_792f6

dec_label_pc_792f6:                               ; preds = %dec_label_pc_792e6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_792fb

dec_label_pc_792fb:                               ; preds = %dec_label_pc_792f6, %dec_label_pc_792e6
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

