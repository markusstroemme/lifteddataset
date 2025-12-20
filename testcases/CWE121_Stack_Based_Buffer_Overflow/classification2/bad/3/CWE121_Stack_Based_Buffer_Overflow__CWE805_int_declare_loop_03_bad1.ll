@global_var_bb9a8 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_528a5:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-424 = alloca i64, align 8
  %dataBadBuffer_-640 = alloca [50 x i32], align 8
  %stack_var_-632 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %stack_var_-632 to i64
  %3 = trunc i64 %2 to i32
  %4 = insertvalue [50 x i32] undef, i32 %3, 0
  store [50 x i32] %4, ptr %dataBadBuffer_-640, align 8
  %5 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %5, i64 0, i64 50)
  %6 = bitcast ptr %dataBadBuffer_-640 to ptr
  %7 = add i64 %0, -416
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_528f5

dec_label_pc_528f5:                               ; preds = %dec_label_pc_528a5, %dec_label_pc_528f5
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %8 = ptrtoint ptr %storemerge1.reload to i64
  %9 = mul i64 %8, 4
  %10 = load i64, ptr %6, align 8
  %11 = add i64 %9, %10
  %12 = add i64 %7, %9
  %13 = inttoptr i64 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = inttoptr i64 %11 to ptr
  store i32 %14, ptr %15, align 4
  %16 = add i64 %8, 1
  %17 = inttoptr i64 %16 to ptr
  %18 = icmp ugt ptr %17, inttoptr (i64 99 to ptr)
  store ptr %17, ptr %storemerge1.reg2mem, align 8
  br i1 %18, label %dec_label_pc_52930, label %dec_label_pc_528f5

dec_label_pc_52930:                               ; preds = %dec_label_pc_528f5
  %19 = load i64, ptr %6, align 8
  %20 = inttoptr i64 %19 to ptr
  %21 = load i32, ptr %20, align 4
  call void @printIntLine(i32 %21)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %1, %22
  br i1 %23, label %dec_label_pc_52955, label %dec_label_pc_52950

dec_label_pc_52950:                               ; preds = %dec_label_pc_52930
  call void @__stack_chk_fail()
  br label %dec_label_pc_52955

dec_label_pc_52955:                               ; preds = %dec_label_pc_52950, %dec_label_pc_52930
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

