@global_var_7c82d = external constant [5 x i8]
@global_var_320 = external constant i32
@global_var_a20f4 = external local_unnamed_addr global i32

define ptr @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_15f5f:
  %stack_var_-16.0.in.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_a20f4, align 4
  %1 = icmp eq i32 %0, 0
  store ptr %data, ptr %stack_var_-16.0.in.reg2mem, align 8
  br i1 %1, label %dec_label_pc_15f98, label %dec_label_pc_15f79

dec_label_pc_15f79:                               ; preds = %dec_label_pc_15f5f
  %2 = call ptr @malloc(i32 400)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  store ptr %2, ptr %stack_var_-16.0.in.reg2mem, align 8
  br i1 %4, label %dec_label_pc_15f98, label %dec_label_pc_15f8e

dec_label_pc_15f8e:                               ; preds = %dec_label_pc_15f79
  call void @exit(i32 -1)
  unreachable

dec_label_pc_15f98:                               ; preds = %dec_label_pc_15f79, %dec_label_pc_15f5f
  %stack_var_-16.0.in.reload = load ptr, ptr %stack_var_-16.0.in.reg2mem, align 8
  ret ptr %stack_var_-16.0.in.reload
}

define void @anon0() local_unnamed_addr {
dec_label_pc_15f9e:
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @global_var_a20f4, align 4
  %1 = call ptr @anon1(ptr null)
  %2 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 100)
  %3 = call ptr @memcpy(ptr %1, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = load i64, ptr %1, align 8
  call void @printLongLongLine(i64 %4)
  call void @free(ptr %1)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_16052, label %dec_label_pc_1604d

dec_label_pc_1604d:                               ; preds = %dec_label_pc_15f9e
  call void @__stack_chk_fail()
  br label %dec_label_pc_16052

dec_label_pc_16052:                               ; preds = %dec_label_pc_1604d, %dec_label_pc_15f9e
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

