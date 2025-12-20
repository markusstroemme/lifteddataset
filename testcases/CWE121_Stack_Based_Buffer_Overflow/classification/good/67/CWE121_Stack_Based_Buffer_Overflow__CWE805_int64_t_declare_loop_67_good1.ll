@global_var_bb9b5 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_2ea20:
  %dataBadBuffer_-832 = alloca [50 x i64], align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-824 to i64
  %2 = insertvalue [50 x i64] undef, i64 %1, 0
  store [50 x i64] %2, ptr %dataBadBuffer_-832, align 8
  %3 = getelementptr inbounds [50 x i64], ptr %dataBadBuffer_-832, i64 0, i64 0
  %4 = load i64, ptr %3, align 8
  call void @anon0(i64 %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_2ea7e, label %dec_label_pc_2ea79

dec_label_pc_2ea79:                               ; preds = %dec_label_pc_2ea20
  call void @__stack_chk_fail()
  br label %dec_label_pc_2ea7e

dec_label_pc_2ea7e:                               ; preds = %dec_label_pc_2ea79, %dec_label_pc_2ea20
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_2eb52:
  %0 = alloca i1, align 1
  %storemerge1.reg2mem = alloca ptr, align 8
  %1 = load i1, ptr %0, align 1
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 100)
  %5 = add i64 %2, -816
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_2eba9

dec_label_pc_2eba9:                               ; preds = %dec_label_pc_2eb52, %dec_label_pc_2eba9
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %6 = ptrtoint ptr %storemerge1.reload to i64
  %7 = mul i64 %6, 8
  %8 = add i64 %7, %myStruct
  %9 = add i64 %5, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i64, ptr %10, align 8
  %12 = inttoptr i64 %8 to ptr
  store i64 %11, ptr %12, align 8
  %13 = add i64 %6, 1
  %14 = inttoptr i64 %13 to ptr
  %15 = icmp ugt ptr %14, inttoptr (i64 99 to ptr)
  store ptr %14, ptr %storemerge1.reg2mem, align 8
  br i1 %15, label %dec_label_pc_2ebe6, label %dec_label_pc_2eba9

dec_label_pc_2ebe6:                               ; preds = %dec_label_pc_2eba9
  %16 = select i1 %1, i64 -800, i64 800
  %17 = ptrtoint ptr %stack_var_-824 to i64
  %18 = add i64 %16, %17
  call void @printLongLongLine(i64 %18)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %3, %19
  br i1 %20, label %dec_label_pc_2ec0d, label %dec_label_pc_2ec08

dec_label_pc_2ec08:                               ; preds = %dec_label_pc_2ebe6
  call void @__stack_chk_fail()
  br label %dec_label_pc_2ec0d

dec_label_pc_2ec0d:                               ; preds = %dec_label_pc_2ec08, %dec_label_pc_2ebe6
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

