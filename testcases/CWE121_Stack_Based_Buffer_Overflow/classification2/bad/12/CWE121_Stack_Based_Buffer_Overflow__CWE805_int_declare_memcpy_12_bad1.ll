@global_var_bb9a8 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_5829b:
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %dataBadBuffer_-1040 = alloca [50 x i32], align 8
  %stack_var_-1032 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = ptrtoint ptr %stack_var_-1032 to i64
  %4 = trunc i64 %3 to i32
  %5 = insertvalue [50 x i32] undef, i32 %4, 0
  %6 = ptrtoint ptr %stack_var_-824 to i64
  %7 = trunc i64 %6 to i32
  %8 = insertvalue [50 x i32] undef, i32 %7, 0
  %storemerge = select i1 %2, [50 x i32] %8, [50 x i32] %5
  store [50 x i32] %storemerge, ptr %dataBadBuffer_-1040, align 8
  %9 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %9, i64 0, i64 50)
  %10 = bitcast ptr %dataBadBuffer_-1040 to ptr
  %11 = load i64, ptr %10, align 8
  %12 = inttoptr i64 %11 to ptr
  %13 = call ptr @memcpy(ptr %12, ptr nonnull %stack_var_-424, i32 400)
  %14 = inttoptr i64 %11 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_5833f, label %dec_label_pc_5833a

dec_label_pc_5833a:                               ; preds = %dec_label_pc_5829b
  call void @__stack_chk_fail()
  br label %dec_label_pc_5833f

dec_label_pc_5833f:                               ; preds = %dec_label_pc_5833a, %dec_label_pc_5829b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9cb76:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9a8, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_9d049:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

