@global_var_79c7d = external constant [21 x i8]
@global_var_7c82d = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_14f78:
  %stack_var_-832.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_14fc0, label %dec_label_pc_14faf

dec_label_pc_14faf:                               ; preds = %dec_label_pc_14f78
  call void @printLine(ptr @global_var_79c7d)
  store i64 0, ptr %stack_var_-832.0.reg2mem, align 8
  br label %dec_label_pc_14fe5

dec_label_pc_14fc0:                               ; preds = %dec_label_pc_14f78
  %3 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 %4, ptr %stack_var_-832.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_14fe5, label %dec_label_pc_14fdb

dec_label_pc_14fdb:                               ; preds = %dec_label_pc_14fc0
  call void @exit(i32 -1)
  unreachable

dec_label_pc_14fe5:                               ; preds = %dec_label_pc_14fc0, %dec_label_pc_14faf
  %stack_var_-832.0.reload = load i64, ptr %stack_var_-832.0.reg2mem, align 8
  %7 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %7, i64 0, i64 100)
  %8 = inttoptr i64 %stack_var_-832.0.reload to ptr
  %9 = call ptr @memcpy(ptr %8, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %10 = load i64, ptr %8, align 8
  call void @printLongLongLine(i64 %10)
  call void @free(ptr %8)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_15050, label %dec_label_pc_1504b

dec_label_pc_1504b:                               ; preds = %dec_label_pc_14fe5
  call void @__stack_chk_fail()
  br label %dec_label_pc_15050

dec_label_pc_15050:                               ; preds = %dec_label_pc_1504b, %dec_label_pc_14fe5
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_657a6:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_657c9, label %dec_label_pc_657bd

dec_label_pc_657bd:                               ; preds = %dec_label_pc_657a6
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_657c9

dec_label_pc_657c9:                               ; preds = %dec_label_pc_657bd, %dec_label_pc_657a6
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_658c4:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c82d, i32 %0)
  ret void
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_65cc5:
  ret i32 0
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

