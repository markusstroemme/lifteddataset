@global_var_320 = external constant [20 x i8]
@global_var_609e9 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1d34d:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i32 @globalReturnsTrueOrFalse()
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_1d397, label %dec_label_pc_1d384

dec_label_pc_1d384:                               ; preds = %dec_label_pc_1d34d
  %7 = call i64 @_Znam(i64 400)
  store i64 %7, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_1d3a8

dec_label_pc_1d397:                               ; preds = %dec_label_pc_1d34d
  %8 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 %8, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_1d3a8

dec_label_pc_1d3a8:                               ; preds = %dec_label_pc_1d397, %dec_label_pc_1d384
  %9 = ptrtoint ptr %stack_var_-8 to i64
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %10 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %10, i64 0, i64 100)
  %11 = add i64 %9, -816
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_1d3cc

dec_label_pc_1d3cc:                               ; preds = %dec_label_pc_1d3cc, %dec_label_pc_1d3a8
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %12 = mul i64 %storemerge2.reload, 8
  %13 = add i64 %12, %storemerge1.reload
  %14 = add i64 %11, %12
  %15 = inttoptr i64 %14 to ptr
  %16 = load i64, ptr %15, align 8
  %17 = inttoptr i64 %13 to ptr
  store i64 %16, ptr %17, align 8
  %18 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %18, 100
  store i64 %18, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1d409, label %dec_label_pc_1d3cc

dec_label_pc_1d409:                               ; preds = %dec_label_pc_1d3cc
  %19 = inttoptr i64 %storemerge1.reload to ptr
  %20 = load i64, ptr %19, align 8
  call void @printLongLongLine(i64 %20)
  %21 = icmp eq i64 %storemerge1.reload, 0
  br i1 %21, label %dec_label_pc_1d434, label %dec_label_pc_1d425

dec_label_pc_1d425:                               ; preds = %dec_label_pc_1d409
  %22 = and i64 %1, 4294967295
  %23 = inttoptr i64 %22 to ptr
  call void @_ZdaPv(ptr %19, ptr %23)
  br label %dec_label_pc_1d434

dec_label_pc_1d434:                               ; preds = %dec_label_pc_1d425, %dec_label_pc_1d409
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %2, %24
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %25, label %dec_label_pc_1d449, label %dec_label_pc_1d444

dec_label_pc_1d444:                               ; preds = %dec_label_pc_1d434
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1d449

dec_label_pc_1d449:                               ; preds = %dec_label_pc_1d444, %dec_label_pc_1d434
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_4da96:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609e9, i32 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_4dea6:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

