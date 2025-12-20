@global_var_7c82d = external constant [5 x i8]
@global_var_a201c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_e5be:
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-840.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_a201c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %stack_var_-840.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_e617, label %dec_label_pc_e5f2

dec_label_pc_e5f2:                                ; preds = %dec_label_pc_e5be
  %4 = call ptr @malloc(i32 400)
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store i64 %5, ptr %stack_var_-840.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_e617, label %dec_label_pc_e60d

dec_label_pc_e60d:                                ; preds = %dec_label_pc_e5f2
  call void @exit(i32 -1)
  unreachable

dec_label_pc_e617:                                ; preds = %dec_label_pc_e5f2, %dec_label_pc_e5be
  %8 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-840.0.reload = load i64, ptr %stack_var_-840.0.reg2mem, align 8
  %9 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %9, i64 0, i64 100)
  %10 = add i64 %8, -816
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_e63b

dec_label_pc_e63b:                                ; preds = %dec_label_pc_e63b, %dec_label_pc_e617
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %11 = mul i64 %storemerge1.reload, 8
  %12 = add i64 %11, %stack_var_-840.0.reload
  %13 = add i64 %10, %11
  %14 = inttoptr i64 %13 to ptr
  %15 = load i64, ptr %14, align 8
  %16 = inttoptr i64 %12 to ptr
  store i64 %15, ptr %16, align 8
  %17 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %17, 100
  store i64 %17, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_e678, label %dec_label_pc_e63b

dec_label_pc_e678:                                ; preds = %dec_label_pc_e63b
  %18 = inttoptr i64 %stack_var_-840.0.reload to ptr
  %19 = load i64, ptr %18, align 8
  call void @printLongLongLine(i64 %19)
  call void @free(ptr %18)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_e6ae, label %dec_label_pc_e6a9

dec_label_pc_e6a9:                                ; preds = %dec_label_pc_e678
  call void @__stack_chk_fail()
  br label %dec_label_pc_e6ae

dec_label_pc_e6ae:                                ; preds = %dec_label_pc_e6a9, %dec_label_pc_e678
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

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

