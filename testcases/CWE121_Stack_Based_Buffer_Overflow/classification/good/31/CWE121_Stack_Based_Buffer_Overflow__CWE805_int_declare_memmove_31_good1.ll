@global_var_bb9a8 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_5ca38:
  %stack_var_-424 = alloca i64, align 8
  %dataGoodBuffer_-832 = alloca [100 x i32], align 8
  %dataGoodBuffer_-840 = alloca [100 x i32], align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-824 to i64
  %2 = trunc i64 %1 to i32
  %3 = insertvalue [100 x i32] undef, i32 %2, 0
  store [100 x i32] %3, ptr %dataGoodBuffer_-840, align 8
  %4 = bitcast ptr %dataGoodBuffer_-840 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = insertvalue [100 x i32] undef, i32 %6, 0
  store [100 x i32] %7, ptr %dataGoodBuffer_-832, align 8
  %8 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %8, i64 0, i64 50)
  %9 = bitcast ptr %dataGoodBuffer_-832 to ptr
  %10 = load i64, ptr %9, align 8
  %11 = inttoptr i64 %10 to ptr
  %12 = call ptr @memmove(ptr %11, ptr nonnull %stack_var_-424, i32 400)
  %13 = inttoptr i64 %10 to ptr
  %14 = load i32, ptr %13, align 4
  call void @printIntLine(i32 %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_5cada, label %dec_label_pc_5cad5

dec_label_pc_5cad5:                               ; preds = %dec_label_pc_5ca38
  call void @__stack_chk_fail()
  br label %dec_label_pc_5cada

dec_label_pc_5cada:                               ; preds = %dec_label_pc_5cad5, %dec_label_pc_5ca38
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

