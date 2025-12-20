@global_var_bb9a8 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_5683d:
  %stack_var_-472 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-472 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_5689b, label %dec_label_pc_56896

dec_label_pc_56896:                               ; preds = %dec_label_pc_5683d
  call void @__stack_chk_fail()
  br label %dec_label_pc_5689b

dec_label_pc_5689b:                               ; preds = %dec_label_pc_56896, %dec_label_pc_5683d
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_5696f:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %dataArray to i64
  %3 = add i64 %2, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 50)
  %7 = add i64 %0, -416
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_569ca

dec_label_pc_569ca:                               ; preds = %dec_label_pc_5696f, %dec_label_pc_569ca
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %8 = ptrtoint ptr %storemerge2.reload to i64
  %9 = mul i64 %8, 4
  %10 = add i64 %9, %5
  %11 = add i64 %7, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  %14 = inttoptr i64 %10 to ptr
  store i32 %13, ptr %14, align 4
  %15 = add i64 %8, 1
  %16 = inttoptr i64 %15 to ptr
  %17 = icmp ugt ptr %16, inttoptr (i64 99 to ptr)
  store ptr %16, ptr %storemerge2.reg2mem, align 8
  br i1 %17, label %dec_label_pc_56a05, label %dec_label_pc_569ca

dec_label_pc_56a05:                               ; preds = %dec_label_pc_569ca
  %18 = inttoptr i64 %5 to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %1, %20
  br i1 %21, label %dec_label_pc_56a2a, label %dec_label_pc_56a25

dec_label_pc_56a25:                               ; preds = %dec_label_pc_56a05
  call void @__stack_chk_fail()
  br label %dec_label_pc_56a2a

dec_label_pc_56a2a:                               ; preds = %dec_label_pc_56a25, %dec_label_pc_56a05
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9cb76:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9a8, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

