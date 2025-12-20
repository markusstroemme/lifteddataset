@global_var_7c82d = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_16c00:
  %0 = ptrtoint ptr %data to i64
  %stack_var_-824 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 100)
  %3 = call ptr @memcpy(ptr %data, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printLongLongLine(i64 %0)
  call void @free(ptr %data)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %1, %4
  br i1 %5, label %dec_label_pc_16c90, label %dec_label_pc_16c8b

dec_label_pc_16c8b:                               ; preds = %dec_label_pc_16c00
  call void @__stack_chk_fail()
  br label %dec_label_pc_16c90

dec_label_pc_16c90:                               ; preds = %dec_label_pc_16c8b, %dec_label_pc_16c00
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_16c92:
  %0 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_16cc5, label %dec_label_pc_16cbb

dec_label_pc_16cbb:                               ; preds = %dec_label_pc_16c92
  call void @exit(i32 -1)
  unreachable

dec_label_pc_16cc5:                               ; preds = %dec_label_pc_16c92
  call void @anon0(ptr %0)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_658c4:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c82d, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

