@global_var_bb9b5 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2c46a:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %dataGoodBuffer_-1632 = alloca [100 x i64], align 8
  %stack_var_-1624 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %stack_var_-1624 to i64
  %3 = insertvalue [100 x i64] undef, i64 %2, 0
  store [100 x i64] %3, ptr %dataGoodBuffer_-1632, align 8
  %4 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 100)
  %5 = getelementptr inbounds [100 x i64], ptr %dataGoodBuffer_-1632, i64 0, i64 0
  %6 = add i64 %0, -816
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_2c4bb

dec_label_pc_2c4bb:                               ; preds = %dec_label_pc_2c46a, %dec_label_pc_2c4bb
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %7 = ptrtoint ptr %storemerge1.reload to i64
  %8 = mul i64 %7, 8
  %9 = load i64, ptr %5, align 8
  %10 = add i64 %8, %9
  %11 = add i64 %6, %8
  %12 = inttoptr i64 %11 to ptr
  %13 = load i64, ptr %12, align 8
  %14 = inttoptr i64 %10 to ptr
  store i64 %13, ptr %14, align 8
  %15 = add i64 %7, 1
  %16 = inttoptr i64 %15 to ptr
  %17 = icmp ugt ptr %16, inttoptr (i64 99 to ptr)
  store ptr %16, ptr %storemerge1.reg2mem, align 8
  br i1 %17, label %dec_label_pc_2c4f8, label %dec_label_pc_2c4bb

dec_label_pc_2c4f8:                               ; preds = %dec_label_pc_2c4bb
  %18 = load i64, ptr %5, align 8
  %19 = inttoptr i64 %18 to ptr
  %20 = load i64, ptr %19, align 8
  call void @printLongLongLine(i64 %20)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %1, %21
  br i1 %22, label %dec_label_pc_2c51f, label %dec_label_pc_2c51a

dec_label_pc_2c51a:                               ; preds = %dec_label_pc_2c4f8
  call void @__stack_chk_fail()
  br label %dec_label_pc_2c51f

dec_label_pc_2c51f:                               ; preds = %dec_label_pc_2c51a, %dec_label_pc_2c4f8
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_9cc39:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9b5, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

