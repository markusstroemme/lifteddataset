@global_var_320 = external constant [20 x i8]
@global_var_4a944 = external constant [4 x i8]
@0 = external global i32
@global_var_630a8 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1e174:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630a8, align 4
  %1 = icmp eq i32 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_1e200, label %dec_label_pc_1e192

dec_label_pc_1e192:                               ; preds = %dec_label_pc_1e174
  %2 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_1e1aa

dec_label_pc_1e1aa:                               ; preds = %dec_label_pc_1e1aa, %dec_label_pc_1e192
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %3 = mul i64 %storemerge2.reload, 8
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i32 1, ptr %5, align 4
  %6 = add i64 %4, 4
  %7 = inttoptr i64 %6 to ptr
  store i32 2, ptr %7, align 4
  %8 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1e1e9, label %dec_label_pc_1e1aa

dec_label_pc_1e1e9:                               ; preds = %dec_label_pc_1e1aa
  %.pr = load i32, ptr @global_var_630a8, align 4
  %9 = icmp eq i32 %.pr, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_1e200, label %dec_label_pc_1e1f3

dec_label_pc_1e1f3:                               ; preds = %dec_label_pc_1e1e9
  %10 = inttoptr i64 %2 to ptr
  %11 = load i32, ptr %10, align 4
  call void @printIntLine(i32 %11)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1e200

dec_label_pc_1e200:                               ; preds = %dec_label_pc_1e174, %dec_label_pc_1e1f3, %dec_label_pc_1e1e9
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

