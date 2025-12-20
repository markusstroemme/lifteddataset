@global_var_490aa = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2302a:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i32, align 4
  %stack_var_-16.0.reg2mem = alloca i64, align 8
  store i32 0, ptr %storemerge2.reg2mem, align 4
  br label %dec_label_pc_2304b

dec_label_pc_2304b:                               ; preds = %dec_label_pc_2304b, %dec_label_pc_2302a
  %storemerge2.reload = load i32, ptr %storemerge2.reg2mem, align 4
  %stack_var_-16.0.reload = load i64, ptr %stack_var_-16.0.reg2mem, align 8
  %0 = add nuw nsw i32 %storemerge2.reload, 1
  %exitcond = icmp eq i32 %0, 2
  store i64 0, ptr %stack_var_-16.0.reg2mem, align 8
  store i32 %0, ptr %storemerge2.reg2mem, align 4
  br i1 %exitcond, label %dec_label_pc_2305a, label %dec_label_pc_2304b

dec_label_pc_2305a:                               ; preds = %dec_label_pc_2304b
  %1 = icmp eq i64 %stack_var_-16.0.reload, 0
  br i1 %1, label %dec_label_pc_23086, label %dec_label_pc_23061

dec_label_pc_23061:                               ; preds = %dec_label_pc_2305a
  %2 = inttoptr i64 %stack_var_-16.0.reload to ptr
  %3 = inttoptr i64 %stack_var_-16.0.reload to ptr
  %4 = load i32, ptr %3, align 4
  call void @printIntLine(i32 %4)
  %5 = call i64 @_ZdlPvm(ptr %2, i64 8)
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2309f

dec_label_pc_23086:                               ; preds = %dec_label_pc_2305a
  call void @printLine(ptr @global_var_490aa)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2309f

dec_label_pc_2309f:                               ; preds = %dec_label_pc_23061, %dec_label_pc_23086
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

