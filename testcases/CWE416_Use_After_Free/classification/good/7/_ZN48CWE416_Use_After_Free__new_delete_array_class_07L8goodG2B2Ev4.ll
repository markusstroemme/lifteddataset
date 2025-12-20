@global_var_320 = external constant [20 x i8]
@global_var_4a944 = external constant [4 x i8]
@0 = external global i32
@global_var_6304c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1d7cc:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca i32, align 4
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_6304c, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_1d842, label %dec_label_pc_1d7eb

dec_label_pc_1d7eb:                               ; preds = %dec_label_pc_1d7cc
  %3 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_1d803

dec_label_pc_1d803:                               ; preds = %dec_label_pc_1d803, %dec_label_pc_1d7eb
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %4 = mul i64 %storemerge2.reload, 8
  %5 = add i64 %4, %3
  %6 = inttoptr i64 %5 to ptr
  store i32 1, ptr %6, align 4
  %7 = add i64 %5, 4
  %8 = inttoptr i64 %7 to ptr
  store i32 2, ptr %8, align 4
  %9 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1d842.loopexit, label %dec_label_pc_1d803

dec_label_pc_1d842.loopexit:                      ; preds = %dec_label_pc_1d803
  %10 = inttoptr i64 %3 to ptr
  %.pre = load i32, ptr @global_var_6304c, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  store ptr %10, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_1d842

dec_label_pc_1d842:                               ; preds = %dec_label_pc_1d842.loopexit, %dec_label_pc_1d7cc
  %.reload = load i32, ptr %.reg2mem, align 4
  %11 = zext i32 %.reload to i64
  %12 = icmp eq i32 %.reload, 5
  %13 = icmp eq i1 %12, false
  store i64 %11, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_1d85a, label %dec_label_pc_1d84d

dec_label_pc_1d84d:                               ; preds = %dec_label_pc_1d842
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %14 = load i32, ptr %stack_var_-24.0.reload, align 4
  call void @printIntLine(i32 %14)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1d85a

dec_label_pc_1d85a:                               ; preds = %dec_label_pc_1d84d, %dec_label_pc_1d842
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

