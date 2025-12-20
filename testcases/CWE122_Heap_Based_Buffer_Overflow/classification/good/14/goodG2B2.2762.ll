@global_var_7c82d = external constant [5 x i8]
@global_var_a206c = external local_unnamed_addr global i32
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1a95a:
  %stack_var_-832.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_a206c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %stack_var_-832.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_1a9b3, label %dec_label_pc_1a98e

dec_label_pc_1a98e:                               ; preds = %dec_label_pc_1a95a
  %4 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store i64 %5, ptr %stack_var_-832.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_1a9b3, label %dec_label_pc_1a9a9

dec_label_pc_1a9a9:                               ; preds = %dec_label_pc_1a98e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1a9b3:                               ; preds = %dec_label_pc_1a98e, %dec_label_pc_1a95a
  %stack_var_-832.0.reload = load i64, ptr %stack_var_-832.0.reg2mem, align 8
  %8 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %8, i64 0, i64 100)
  %9 = inttoptr i64 %stack_var_-832.0.reload to ptr
  %10 = call ptr @memmove(ptr %9, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %11 = load i64, ptr %9, align 8
  call void @printLongLongLine(i64 %11)
  call void @free(ptr %9)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_1aa1e, label %dec_label_pc_1aa19

dec_label_pc_1aa19:                               ; preds = %dec_label_pc_1a9b3
  call void @__stack_chk_fail()
  br label %dec_label_pc_1aa1e

dec_label_pc_1aa1e:                               ; preds = %dec_label_pc_1aa19, %dec_label_pc_1a9b3
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_658c4:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c82d, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

