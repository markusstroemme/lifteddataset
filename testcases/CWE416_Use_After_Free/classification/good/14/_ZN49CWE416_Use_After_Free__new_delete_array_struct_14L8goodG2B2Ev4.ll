@global_var_320 = external constant [20 x i8]
@global_var_4a96e = external constant [10 x i8]
@0 = external global i32
@global_var_630ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2be6b:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca i32, align 4
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_2bee1, label %dec_label_pc_2be8a

dec_label_pc_2be8a:                               ; preds = %dec_label_pc_2be6b
  %3 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_2bea2

dec_label_pc_2bea2:                               ; preds = %dec_label_pc_2bea2, %dec_label_pc_2be8a
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
  br i1 %exitcond, label %dec_label_pc_2bee1.loopexit, label %dec_label_pc_2bea2

dec_label_pc_2bee1.loopexit:                      ; preds = %dec_label_pc_2bea2
  %10 = inttoptr i64 %3 to ptr
  %.pre = load i32, ptr @global_var_630ac, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  store ptr %10, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_2bee1

dec_label_pc_2bee1:                               ; preds = %dec_label_pc_2bee1.loopexit, %dec_label_pc_2be6b
  %.reload = load i32, ptr %.reg2mem, align 4
  %11 = zext i32 %.reload to i64
  %12 = icmp eq i32 %.reload, 5
  %13 = icmp eq i1 %12, false
  store i64 %11, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_2bef8, label %dec_label_pc_2beec

dec_label_pc_2beec:                               ; preds = %dec_label_pc_2bee1
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  call void @printStructLine(ptr %stack_var_-24.0.reload)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2bef8

dec_label_pc_2bef8:                               ; preds = %dec_label_pc_2beec, %dec_label_pc_2bee1
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_3ba96:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_4a96e, i64 %7, i64 %6)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

