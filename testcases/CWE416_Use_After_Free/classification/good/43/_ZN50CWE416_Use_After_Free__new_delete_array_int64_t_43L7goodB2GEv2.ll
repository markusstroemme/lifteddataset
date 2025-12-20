@global_var_320 = external constant [20 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_22b75:
  %0 = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  %3 = bitcast ptr %arg1 to ptr
  store i64 %2, ptr %3, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_22ba3

dec_label_pc_22ba3:                               ; preds = %dec_label_pc_22ba3, %dec_label_pc_22b75
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %4 = mul i64 %storemerge2.reload, 8
  %5 = add i64 %4, ptrtoint (ptr @global_var_320 to i64)
  %6 = inttoptr i64 %5 to ptr
  store i64 5, ptr %6, align 8
  %7 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %7, 100
  store i64 %7, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_22bd4, label %dec_label_pc_22ba3

dec_label_pc_22bd4:                               ; preds = %dec_label_pc_22ba3
  %8 = and i64 %1, 4294967295
  %9 = inttoptr i64 %8 to ptr
  call void @_ZdaPv(ptr @global_var_320, ptr %9)
  ret i64 ptrtoint (ptr @0 to i64)
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_22be6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = bitcast ptr %stack_var_-24 to ptr
  %2 = call i64 @anon0(ptr nonnull %1)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_22c2a, label %dec_label_pc_22c25

dec_label_pc_22c25:                               ; preds = %dec_label_pc_22be6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_22c2a

dec_label_pc_22c2a:                               ; preds = %dec_label_pc_22c25, %dec_label_pc_22be6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare i64 @_Znam(i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

