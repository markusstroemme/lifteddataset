@global_var_b77f5 = external constant [21 x i8]
@global_var_bb9b5 = external constant [5 x i8]
@global_var_320 = external constant i32
@global_var_e6044 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_33642:
  %stack_var_-824 = alloca i64, align 8
  %dataGoodBuffer_-1632 = alloca [100 x i64], align 8
  %stack_var_-1624 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_e6044, align 4
  %2 = icmp eq i32 %1, 5
  br i1 %2, label %dec_label_pc_3367c, label %dec_label_pc_3366b

dec_label_pc_3366b:                               ; preds = %dec_label_pc_33642
  call void @printLine(ptr @global_var_b77f5)
  br label %dec_label_pc_3368a

dec_label_pc_3367c:                               ; preds = %dec_label_pc_33642
  %3 = ptrtoint ptr %stack_var_-1624 to i64
  %4 = insertvalue [100 x i64] undef, i64 %3, 0
  store [100 x i64] %4, ptr %dataGoodBuffer_-1632, align 8
  br label %dec_label_pc_3368a

dec_label_pc_3368a:                               ; preds = %dec_label_pc_3367c, %dec_label_pc_3366b
  %5 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %5, i64 0, i64 100)
  %6 = getelementptr inbounds [100 x i64], ptr %dataGoodBuffer_-1632, i64 0, i64 0
  %7 = load i64, ptr %6, align 8
  %8 = inttoptr i64 %7 to ptr
  %9 = call ptr @memmove(ptr %8, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %10 = load i64, ptr %8, align 8
  call void @printLongLongLine(i64 %10)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_336e6, label %dec_label_pc_336e1

dec_label_pc_336e1:                               ; preds = %dec_label_pc_3368a
  call void @__stack_chk_fail()
  br label %dec_label_pc_336e6

dec_label_pc_336e6:                               ; preds = %dec_label_pc_336e1, %dec_label_pc_3368a
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9cb1b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9cb3e, label %dec_label_pc_9cb32

dec_label_pc_9cb32:                               ; preds = %dec_label_pc_9cb1b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9cb3e

dec_label_pc_9cb3e:                               ; preds = %dec_label_pc_9cb32, %dec_label_pc_9cb1b
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

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

