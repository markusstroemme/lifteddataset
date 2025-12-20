@global_var_320 = external constant [20 x i8]
@global_var_4a944 = external constant [4 x i8]
@0 = external global i32
@global_var_6304c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1d554:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_6304c, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_1d5dd, label %dec_label_pc_1d573

dec_label_pc_1d573:                               ; preds = %dec_label_pc_1d554
  %5 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_1d58b

dec_label_pc_1d58b:                               ; preds = %dec_label_pc_1d58b, %dec_label_pc_1d573
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %6 = mul i64 %storemerge2.reload, 8
  %7 = add i64 %6, %5
  %8 = inttoptr i64 %7 to ptr
  store i32 1, ptr %8, align 4
  %9 = add i64 %7, 4
  %10 = inttoptr i64 %9 to ptr
  store i32 2, ptr %10, align 4
  %11 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %11, 100
  store i64 %11, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1d5ca, label %dec_label_pc_1d58b

dec_label_pc_1d5ca:                               ; preds = %dec_label_pc_1d58b
  %12 = inttoptr i64 %5 to ptr
  %13 = icmp eq i64 %5, 0
  store ptr %12, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_1d5dd, label %dec_label_pc_1d5d1

dec_label_pc_1d5d1:                               ; preds = %dec_label_pc_1d5ca
  %14 = inttoptr i64 %5 to ptr
  %15 = and i64 %1, 4294967295
  %16 = inttoptr i64 %15 to ptr
  call void @_ZdaPv(ptr %14, ptr %16)
  store ptr %12, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_1d5dd

dec_label_pc_1d5dd:                               ; preds = %dec_label_pc_1d5d1, %dec_label_pc_1d5ca, %dec_label_pc_1d554
  %17 = load i32, ptr @global_var_6304c, align 4
  %18 = zext i32 %17 to i64
  %19 = icmp eq i32 %17, 5
  %20 = icmp eq i1 %19, false
  store i64 %18, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_1d5f5, label %dec_label_pc_1d5e8

dec_label_pc_1d5e8:                               ; preds = %dec_label_pc_1d5dd
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %21 = load i32, ptr %stack_var_-24.0.reload, align 4
  call void @printIntLine(i32 %21)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1d5f5

dec_label_pc_1d5f5:                               ; preds = %dec_label_pc_1d5e8, %dec_label_pc_1d5dd
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

