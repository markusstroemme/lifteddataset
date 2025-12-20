@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32
@global_var_63060 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_26c2f:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_63060, align 4
  %3 = icmp eq i32 %2, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_26cb7, label %dec_label_pc_26c4d

dec_label_pc_26c4d:                               ; preds = %dec_label_pc_26c2f
  %4 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_26c65

dec_label_pc_26c65:                               ; preds = %dec_label_pc_26c65, %dec_label_pc_26c4d
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %5 = mul i64 %storemerge2.reload, 8
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i64 5, ptr %7, align 8
  %8 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_26c8b, label %dec_label_pc_26c65

dec_label_pc_26c8b:                               ; preds = %dec_label_pc_26c65
  %9 = icmp eq i64 %4, 0
  br i1 %9, label %dec_label_pc_26c9e, label %dec_label_pc_26c92

dec_label_pc_26c92:                               ; preds = %dec_label_pc_26c8b
  %10 = inttoptr i64 %4 to ptr
  %11 = and i64 %1, 4294967295
  %12 = inttoptr i64 %11 to ptr
  call void @_ZdaPv(ptr %10, ptr %12)
  br label %dec_label_pc_26c9e

dec_label_pc_26c9e:                               ; preds = %dec_label_pc_26c92, %dec_label_pc_26c8b
  %.pr = load i32, ptr @global_var_63060, align 4
  %13 = icmp eq i32 %.pr, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_26cb7, label %dec_label_pc_26ca8

dec_label_pc_26ca8:                               ; preds = %dec_label_pc_26c9e
  %14 = inttoptr i64 %4 to ptr
  %15 = load i64, ptr %14, align 8
  call void @printLongLine(i64 %15)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_26cb7

dec_label_pc_26cb7:                               ; preds = %dec_label_pc_26c2f, %dec_label_pc_26ca8, %dec_label_pc_26c9e
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

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

