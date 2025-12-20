@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32
@global_var_630ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2861c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca i32, align 4
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_28679, label %dec_label_pc_2863b

dec_label_pc_2863b:                               ; preds = %dec_label_pc_2861c
  %3 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_28653

dec_label_pc_28653:                               ; preds = %dec_label_pc_28653, %dec_label_pc_2863b
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %4 = mul i64 %storemerge2.reload, 8
  %5 = add i64 %4, %3
  %6 = inttoptr i64 %5 to ptr
  store i64 5, ptr %6, align 8
  %7 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %7, 100
  store i64 %7, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_28679.loopexit, label %dec_label_pc_28653

dec_label_pc_28679.loopexit:                      ; preds = %dec_label_pc_28653
  %phitmp = inttoptr i64 %3 to ptr
  %.pre = load i32, ptr @global_var_630ac, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  store ptr %phitmp, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_28679

dec_label_pc_28679:                               ; preds = %dec_label_pc_28679.loopexit, %dec_label_pc_2861c
  %.reload = load i32, ptr %.reg2mem, align 4
  %8 = zext i32 %.reload to i64
  %9 = icmp eq i32 %.reload, 5
  %10 = icmp eq i1 %9, false
  store i64 %8, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_28693, label %dec_label_pc_28684

dec_label_pc_28684:                               ; preds = %dec_label_pc_28679
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %11 = load i64, ptr %stack_var_-24.0.reload, align 8
  call void @printLongLine(i64 %11)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_28693

dec_label_pc_28693:                               ; preds = %dec_label_pc_28684, %dec_label_pc_28679
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3b8f7:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

