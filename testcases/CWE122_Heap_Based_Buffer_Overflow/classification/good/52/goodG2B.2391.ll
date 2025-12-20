@global_var_7c82d = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon2() local_unnamed_addr {
dec_label_pc_17471:
  %0 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_174a4, label %dec_label_pc_1749a

dec_label_pc_1749a:                               ; preds = %dec_label_pc_17471
  call void @exit(i32 -1)
  unreachable

dec_label_pc_174a4:                               ; preds = %dec_label_pc_17471
  call void @anon0(ptr %0)
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_174e7:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_17598:
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
  br i1 %5, label %dec_label_pc_17628, label %dec_label_pc_17623

dec_label_pc_17623:                               ; preds = %dec_label_pc_17598
  call void @__stack_chk_fail()
  br label %dec_label_pc_17628

dec_label_pc_17628:                               ; preds = %dec_label_pc_17623, %dec_label_pc_17598
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

