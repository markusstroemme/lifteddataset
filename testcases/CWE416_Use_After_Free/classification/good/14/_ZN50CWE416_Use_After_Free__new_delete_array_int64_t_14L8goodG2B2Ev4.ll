@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32
@global_var_630ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_222a9:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca i32, align 4
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_22306, label %dec_label_pc_222c8

dec_label_pc_222c8:                               ; preds = %dec_label_pc_222a9
  %3 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_222e0

dec_label_pc_222e0:                               ; preds = %dec_label_pc_222e0, %dec_label_pc_222c8
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %4 = mul i64 %storemerge2.reload, 8
  %5 = add i64 %4, %3
  %6 = inttoptr i64 %5 to ptr
  store i64 5, ptr %6, align 8
  %7 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %7, 100
  store i64 %7, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_22306.loopexit, label %dec_label_pc_222e0

dec_label_pc_22306.loopexit:                      ; preds = %dec_label_pc_222e0
  %phitmp = inttoptr i64 %3 to ptr
  %.pre = load i32, ptr @global_var_630ac, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  store ptr %phitmp, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_22306

dec_label_pc_22306:                               ; preds = %dec_label_pc_22306.loopexit, %dec_label_pc_222a9
  %.reload = load i32, ptr %.reg2mem, align 4
  %8 = zext i32 %.reload to i64
  %9 = icmp eq i32 %.reload, 5
  %10 = icmp eq i1 %9, false
  store i64 %8, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_22320, label %dec_label_pc_22311

dec_label_pc_22311:                               ; preds = %dec_label_pc_22306
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %11 = load i64, ptr %stack_var_-24.0.reload, align 8
  call void @printLongLongLine(i64 %11)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_22320

dec_label_pc_22320:                               ; preds = %dec_label_pc_22311, %dec_label_pc_22306
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3b925:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

