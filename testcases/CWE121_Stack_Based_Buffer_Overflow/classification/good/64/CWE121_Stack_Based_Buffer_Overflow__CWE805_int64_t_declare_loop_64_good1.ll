@global_var_bb9b5 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_2e32b:
  %dataBadBuffer_-832 = alloca [50 x i64], align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-824 to i64
  %2 = insertvalue [50 x i64] undef, i64 %1, 0
  store [50 x i64] %2, ptr %dataBadBuffer_-832, align 8
  %3 = bitcast ptr %dataBadBuffer_-832 to ptr
  call void @anon0(ptr nonnull %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_2e37b, label %dec_label_pc_2e376

dec_label_pc_2e376:                               ; preds = %dec_label_pc_2e32b
  call void @__stack_chk_fail()
  br label %dec_label_pc_2e37b

dec_label_pc_2e37b:                               ; preds = %dec_label_pc_2e376, %dec_label_pc_2e32b
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_2e460:
  %0 = alloca i1, align 1
  %storemerge2.reg2mem = alloca ptr, align 8
  %1 = load i1, ptr %0, align 1
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 100)
  %5 = ptrtoint ptr %dataVoidPtr to i64
  %6 = add i64 %2, -816
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_2e4c8

dec_label_pc_2e4c8:                               ; preds = %dec_label_pc_2e460, %dec_label_pc_2e4c8
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %7 = ptrtoint ptr %storemerge2.reload to i64
  %8 = mul i64 %7, 8
  %9 = add i64 %8, %5
  %10 = add i64 %6, %8
  %11 = inttoptr i64 %10 to ptr
  %12 = load i64, ptr %11, align 8
  %13 = inttoptr i64 %9 to ptr
  store i64 %12, ptr %13, align 8
  %14 = add i64 %7, 1
  %15 = inttoptr i64 %14 to ptr
  %16 = icmp ugt ptr %15, inttoptr (i64 99 to ptr)
  store ptr %15, ptr %storemerge2.reg2mem, align 8
  br i1 %16, label %dec_label_pc_2e505, label %dec_label_pc_2e4c8

dec_label_pc_2e505:                               ; preds = %dec_label_pc_2e4c8
  %17 = select i1 %1, i64 -800, i64 800
  %18 = ptrtoint ptr %stack_var_-824 to i64
  %19 = add i64 %17, %18
  call void @printLongLongLine(i64 %19)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %3, %20
  br i1 %21, label %dec_label_pc_2e52c, label %dec_label_pc_2e527

dec_label_pc_2e527:                               ; preds = %dec_label_pc_2e505
  call void @__stack_chk_fail()
  br label %dec_label_pc_2e52c

dec_label_pc_2e52c:                               ; preds = %dec_label_pc_2e527, %dec_label_pc_2e505
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

