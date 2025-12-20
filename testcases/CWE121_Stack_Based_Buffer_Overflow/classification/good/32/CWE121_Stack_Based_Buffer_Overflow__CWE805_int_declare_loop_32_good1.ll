@global_var_bb9a8 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_54e44:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-424 = alloca i64, align 8
  %dataGoodBuffer_-832 = alloca [100 x i32], align 8
  %stack_var_-824 = alloca i64, align 8
  %dataGoodBuffer_-840 = alloca [100 x i32], align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %stack_var_-824 to i64
  %3 = trunc i64 %2 to i32
  %4 = insertvalue [100 x i32] undef, i32 %3, 0
  store [100 x i32] %4, ptr %dataGoodBuffer_-840, align 8
  %5 = bitcast ptr %dataGoodBuffer_-840 to ptr
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = insertvalue [100 x i32] undef, i32 %7, 0
  store [100 x i32] %8, ptr %dataGoodBuffer_-832, align 8
  %9 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %9, i64 0, i64 50)
  %10 = bitcast ptr %dataGoodBuffer_-832 to ptr
  %11 = add i64 %0, -416
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_54ee3

dec_label_pc_54ee3:                               ; preds = %dec_label_pc_54e44, %dec_label_pc_54ee3
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %12 = ptrtoint ptr %storemerge2.reload to i64
  %13 = mul i64 %12, 4
  %14 = load i64, ptr %10, align 8
  %15 = add i64 %13, %14
  %16 = add i64 %11, %13
  %17 = inttoptr i64 %16 to ptr
  %18 = load i32, ptr %17, align 4
  %19 = inttoptr i64 %15 to ptr
  store i32 %18, ptr %19, align 4
  %20 = add i64 %12, 1
  %21 = inttoptr i64 %20 to ptr
  %22 = icmp ugt ptr %21, inttoptr (i64 99 to ptr)
  store ptr %21, ptr %storemerge2.reg2mem, align 8
  br i1 %22, label %dec_label_pc_54f1e, label %dec_label_pc_54ee3

dec_label_pc_54f1e:                               ; preds = %dec_label_pc_54ee3
  %23 = load i64, ptr %10, align 8
  %24 = inttoptr i64 %23 to ptr
  %25 = load i32, ptr %24, align 4
  call void @printIntLine(i32 %25)
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %1, %26
  br i1 %27, label %dec_label_pc_54f43, label %dec_label_pc_54f3e

dec_label_pc_54f3e:                               ; preds = %dec_label_pc_54f1e
  call void @__stack_chk_fail()
  br label %dec_label_pc_54f43

dec_label_pc_54f43:                               ; preds = %dec_label_pc_54f3e, %dec_label_pc_54f1e
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

