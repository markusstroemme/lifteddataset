@global_var_bb9b5 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2cab6:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %dataBadBuffer_-1232 = alloca [50 x i64], align 8
  %dataBadBuffer_-1240 = alloca [50 x i64], align 8
  %stack_var_-1224 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %stack_var_-1224 to i64
  %3 = insertvalue [50 x i64] undef, i64 %2, 0
  store [50 x i64] %3, ptr %dataBadBuffer_-1240, align 8
  %4 = getelementptr inbounds [50 x i64], ptr %dataBadBuffer_-1240, i64 0, i64 0
  %5 = load i64, ptr %4, align 8
  %6 = insertvalue [50 x i64] undef, i64 %5, 0
  store [50 x i64] %6, ptr %dataBadBuffer_-1232, align 8
  %7 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %7, i64 0, i64 100)
  %8 = getelementptr inbounds [50 x i64], ptr %dataBadBuffer_-1232, i64 0, i64 0
  %9 = add i64 %0, -816
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_2cb22

dec_label_pc_2cb22:                               ; preds = %dec_label_pc_2cab6, %dec_label_pc_2cb22
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %10 = ptrtoint ptr %storemerge1.reload to i64
  %11 = mul i64 %10, 8
  %12 = load i64, ptr %8, align 8
  %13 = add i64 %11, %12
  %14 = add i64 %9, %11
  %15 = inttoptr i64 %14 to ptr
  %16 = load i64, ptr %15, align 8
  %17 = inttoptr i64 %13 to ptr
  store i64 %16, ptr %17, align 8
  %18 = add i64 %10, 1
  %19 = inttoptr i64 %18 to ptr
  %20 = icmp ugt ptr %19, inttoptr (i64 99 to ptr)
  store ptr %19, ptr %storemerge1.reg2mem, align 8
  br i1 %20, label %dec_label_pc_2cb5f, label %dec_label_pc_2cb22

dec_label_pc_2cb5f:                               ; preds = %dec_label_pc_2cb22
  %21 = load i64, ptr %8, align 8
  %22 = inttoptr i64 %21 to ptr
  %23 = load i64, ptr %22, align 8
  call void @printLongLongLine(i64 %23)
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %1, %24
  br i1 %25, label %dec_label_pc_2cb86, label %dec_label_pc_2cb81

dec_label_pc_2cb81:                               ; preds = %dec_label_pc_2cb5f
  call void @__stack_chk_fail()
  br label %dec_label_pc_2cb86

dec_label_pc_2cb86:                               ; preds = %dec_label_pc_2cb81, %dec_label_pc_2cb5f
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

