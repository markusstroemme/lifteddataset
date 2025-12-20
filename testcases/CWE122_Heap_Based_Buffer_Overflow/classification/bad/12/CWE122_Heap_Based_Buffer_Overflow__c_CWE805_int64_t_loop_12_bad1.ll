@global_var_7c82d = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_f506:
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-840.0.in.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_f562, label %dec_label_pc_f53d

dec_label_pc_f53d:                                ; preds = %dec_label_pc_f506
  %3 = call ptr @malloc(i32 400)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-840.0.in.reg2mem, align 8
  br i1 %5, label %dec_label_pc_f587, label %dec_label_pc_f558

dec_label_pc_f558:                                ; preds = %dec_label_pc_f53d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_f562:                                ; preds = %dec_label_pc_f506
  %6 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i1 %7, false
  store ptr %6, ptr %stack_var_-840.0.in.reg2mem, align 8
  br i1 %8, label %dec_label_pc_f587, label %dec_label_pc_f57d

dec_label_pc_f57d:                                ; preds = %dec_label_pc_f562
  call void @exit(i32 -1)
  unreachable

dec_label_pc_f587:                                ; preds = %dec_label_pc_f562, %dec_label_pc_f53d
  %9 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-840.0.in.reload = load ptr, ptr %stack_var_-840.0.in.reg2mem, align 8
  %stack_var_-840.0 = ptrtoint ptr %stack_var_-840.0.in.reload to i64
  %10 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %10, i64 0, i64 100)
  %11 = add i64 %9, -816
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_f5ab

dec_label_pc_f5ab:                                ; preds = %dec_label_pc_f5ab, %dec_label_pc_f587
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %12 = mul i64 %storemerge1.reload, 8
  %13 = add i64 %12, %stack_var_-840.0
  %14 = add i64 %11, %12
  %15 = inttoptr i64 %14 to ptr
  %16 = load i64, ptr %15, align 8
  %17 = inttoptr i64 %13 to ptr
  store i64 %16, ptr %17, align 8
  %18 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %18, 100
  store i64 %18, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_f5e8, label %dec_label_pc_f5ab

dec_label_pc_f5e8:                                ; preds = %dec_label_pc_f5ab
  %19 = load i64, ptr %stack_var_-840.0.in.reload, align 8
  call void @printLongLongLine(i64 %19)
  call void @free(ptr %stack_var_-840.0.in.reload)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_f61e, label %dec_label_pc_f619

dec_label_pc_f619:                                ; preds = %dec_label_pc_f5e8
  call void @__stack_chk_fail()
  br label %dec_label_pc_f61e

dec_label_pc_f61e:                                ; preds = %dec_label_pc_f619, %dec_label_pc_f5e8
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

