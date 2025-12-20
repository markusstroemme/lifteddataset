@global_var_7c820 = external constant [4 x i8]

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_21bea:
  %0 = call ptr @malloc(i32 400)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_21c19, label %dec_label_pc_21c0f

dec_label_pc_21c0f:                               ; preds = %dec_label_pc_21bea
  call void @exit(i32 -1)
  unreachable

dec_label_pc_21c19:                               ; preds = %dec_label_pc_21bea
  %3 = bitcast ptr %0 to ptr
  ret ptr %3
}

define void @anon1() local_unnamed_addr {
dec_label_pc_21c1f:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @anon0(ptr null)
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 50)
  %5 = add i64 %0, -416
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_21c82

dec_label_pc_21c82:                               ; preds = %dec_label_pc_21c1f, %dec_label_pc_21c82
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %6 = ptrtoint ptr %storemerge1.reload to i64
  %7 = mul i64 %6, 4
  %8 = add i64 %7, %3
  %9 = add i64 %5, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i32, ptr %10, align 4
  %12 = inttoptr i64 %8 to ptr
  store i32 %11, ptr %12, align 4
  %13 = add i64 %6, 1
  %14 = inttoptr i64 %13 to ptr
  %15 = icmp ugt ptr %14, inttoptr (i64 99 to ptr)
  store ptr %14, ptr %storemerge1.reg2mem, align 8
  br i1 %15, label %dec_label_pc_21cbd, label %dec_label_pc_21c82

dec_label_pc_21cbd:                               ; preds = %dec_label_pc_21c82
  %16 = load i32, ptr %2, align 4
  call void @printIntLine(i32 %16)
  %17 = bitcast ptr %2 to ptr
  call void @free(ptr %17)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %dec_label_pc_21cf1, label %dec_label_pc_21cec

dec_label_pc_21cec:                               ; preds = %dec_label_pc_21cbd
  call void @__stack_chk_fail()
  br label %dec_label_pc_21cf1

dec_label_pc_21cf1:                               ; preds = %dec_label_pc_21cec, %dec_label_pc_21cbd
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_65801:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c820, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

