@global_var_bb9a8 = external constant [4 x i8]
@global_var_e6074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5b67c:
  %stack_var_-424 = alloca i64, align 8
  %dataGoodBuffer_-832 = alloca [100 x i32], align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_e6074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_5b6b3, label %dec_label_pc_5b6a5

dec_label_pc_5b6a5:                               ; preds = %dec_label_pc_5b67c
  %4 = ptrtoint ptr %stack_var_-824 to i64
  %5 = trunc i64 %4 to i32
  %6 = insertvalue [100 x i32] undef, i32 %5, 0
  store [100 x i32] %6, ptr %dataGoodBuffer_-832, align 8
  br label %dec_label_pc_5b6b3

dec_label_pc_5b6b3:                               ; preds = %dec_label_pc_5b6a5, %dec_label_pc_5b67c
  %7 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %7, i64 0, i64 50)
  %8 = bitcast ptr %dataGoodBuffer_-832 to ptr
  %9 = load i64, ptr %8, align 8
  %10 = inttoptr i64 %9 to ptr
  %11 = call ptr @memmove(ptr %10, ptr nonnull %stack_var_-424, i32 400)
  %12 = inttoptr i64 %9 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_5b70d, label %dec_label_pc_5b708

dec_label_pc_5b708:                               ; preds = %dec_label_pc_5b6b3
  call void @__stack_chk_fail()
  br label %dec_label_pc_5b70d

dec_label_pc_5b70d:                               ; preds = %dec_label_pc_5b708, %dec_label_pc_5b6b3
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

