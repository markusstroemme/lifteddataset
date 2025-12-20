@global_var_320 = external constant [20 x i8]
@0 = external global i32
@global_var_630a8 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_27a65:
  %0 = alloca i64, align 8
  %rax.1.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_630a8, align 4
  %3 = icmp eq i32 %2, 0
  store i64 0, ptr %rax.1.reg2mem, align 8
  br i1 %3, label %dec_label_pc_27ad4, label %dec_label_pc_27a83

dec_label_pc_27a83:                               ; preds = %dec_label_pc_27a65
  %4 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_27a9b

dec_label_pc_27a9b:                               ; preds = %dec_label_pc_27a9b, %dec_label_pc_27a83
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %5 = mul i64 %storemerge2.reload, 8
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i64 5, ptr %7, align 8
  %8 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_27ac1, label %dec_label_pc_27a9b

dec_label_pc_27ac1:                               ; preds = %dec_label_pc_27a9b
  %9 = icmp eq i64 %4, 0
  store i64 %6, ptr %rax.1.reg2mem, align 8
  br i1 %9, label %dec_label_pc_27ad4, label %dec_label_pc_27ac8

dec_label_pc_27ac8:                               ; preds = %dec_label_pc_27ac1
  %10 = inttoptr i64 %4 to ptr
  %11 = and i64 %1, 4294967295
  %12 = inttoptr i64 %11 to ptr
  call void @_ZdaPv(ptr %10, ptr %12)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.1.reg2mem, align 8
  br label %dec_label_pc_27ad4

dec_label_pc_27ad4:                               ; preds = %dec_label_pc_27ac8, %dec_label_pc_27ac1, %dec_label_pc_27a65
  %rax.1.reload = load i64, ptr %rax.1.reg2mem, align 8
  ret i64 %rax.1.reload
}

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

