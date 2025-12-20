@global_var_7c82d = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1513a:
  %stack_var_-832.0.in.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_15196, label %dec_label_pc_15171

dec_label_pc_15171:                               ; preds = %dec_label_pc_1513a
  %3 = call ptr @malloc(i32 400)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-832.0.in.reg2mem, align 8
  br i1 %5, label %dec_label_pc_151bb, label %dec_label_pc_1518c

dec_label_pc_1518c:                               ; preds = %dec_label_pc_15171
  call void @exit(i32 -1)
  unreachable

dec_label_pc_15196:                               ; preds = %dec_label_pc_1513a
  %6 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i1 %7, false
  store ptr %6, ptr %stack_var_-832.0.in.reg2mem, align 8
  br i1 %8, label %dec_label_pc_151bb, label %dec_label_pc_151b1

dec_label_pc_151b1:                               ; preds = %dec_label_pc_15196
  call void @exit(i32 -1)
  unreachable

dec_label_pc_151bb:                               ; preds = %dec_label_pc_15196, %dec_label_pc_15171
  %stack_var_-832.0.in.reload = load ptr, ptr %stack_var_-832.0.in.reg2mem, align 8
  %9 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %9, i64 0, i64 100)
  %10 = call ptr @memcpy(ptr %stack_var_-832.0.in.reload, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %11 = load i64, ptr %stack_var_-832.0.in.reload, align 8
  call void @printLongLongLine(i64 %11)
  call void @free(ptr %stack_var_-832.0.in.reload)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_15226, label %dec_label_pc_15221

dec_label_pc_15221:                               ; preds = %dec_label_pc_151bb
  call void @__stack_chk_fail()
  br label %dec_label_pc_15226

dec_label_pc_15226:                               ; preds = %dec_label_pc_15221, %dec_label_pc_151bb
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_658c4:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c82d, i32 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_65cd4:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

