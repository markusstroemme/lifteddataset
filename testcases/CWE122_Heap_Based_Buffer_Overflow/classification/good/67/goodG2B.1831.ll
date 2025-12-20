@global_var_7c82d = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon1() local_unnamed_addr {
dec_label_pc_132b5:
  %0 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_132e8, label %dec_label_pc_132de

dec_label_pc_132de:                               ; preds = %dec_label_pc_132b5
  call void @exit(i32 -1)
  unreachable

dec_label_pc_132e8:                               ; preds = %dec_label_pc_132b5
  %3 = ptrtoint ptr %0 to i64
  call void @anon0(i64 %3)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_133e0:
  %0 = alloca i1, align 1
  %storemerge1.reg2mem = alloca ptr, align 8
  %1 = load i1, ptr %0, align 1
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 100)
  %5 = add i64 %2, -816
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_13437

dec_label_pc_13437:                               ; preds = %dec_label_pc_133e0, %dec_label_pc_13437
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %6 = ptrtoint ptr %storemerge1.reload to i64
  %7 = mul i64 %6, 8
  %8 = add i64 %7, %myStruct
  %9 = add i64 %5, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i64, ptr %10, align 8
  %12 = inttoptr i64 %8 to ptr
  store i64 %11, ptr %12, align 8
  %13 = add i64 %6, 1
  %14 = inttoptr i64 %13 to ptr
  %15 = icmp ugt ptr %14, inttoptr (i64 99 to ptr)
  store ptr %14, ptr %storemerge1.reg2mem, align 8
  br i1 %15, label %dec_label_pc_13474, label %dec_label_pc_13437

dec_label_pc_13474:                               ; preds = %dec_label_pc_13437
  %16 = select i1 %1, i64 -800, i64 800
  %17 = ptrtoint ptr %stack_var_-824 to i64
  %18 = add i64 %16, %17
  call void @printLongLongLine(i64 %18)
  %19 = inttoptr i64 %myStruct to ptr
  call void @free(ptr %19)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %3, %20
  br i1 %21, label %dec_label_pc_134aa, label %dec_label_pc_134a5

dec_label_pc_134a5:                               ; preds = %dec_label_pc_13474
  call void @__stack_chk_fail()
  br label %dec_label_pc_134aa

dec_label_pc_134aa:                               ; preds = %dec_label_pc_134a5, %dec_label_pc_13474
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

