@global_var_7c82d = external constant [5 x i8]
@global_var_320 = external constant i32

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_11716:
  %0 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_11745, label %dec_label_pc_1173b

dec_label_pc_1173b:                               ; preds = %dec_label_pc_11716
  call void @exit(i32 -1)
  unreachable

dec_label_pc_11745:                               ; preds = %dec_label_pc_11716
  ret ptr %0
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1174b:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @anon0(ptr null)
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 100)
  %5 = add i64 %0, -816
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_117ae

dec_label_pc_117ae:                               ; preds = %dec_label_pc_1174b, %dec_label_pc_117ae
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %6 = ptrtoint ptr %storemerge1.reload to i64
  %7 = mul i64 %6, 8
  %8 = add i64 %7, %3
  %9 = add i64 %5, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i64, ptr %10, align 8
  %12 = inttoptr i64 %8 to ptr
  store i64 %11, ptr %12, align 8
  %13 = add i64 %6, 1
  %14 = inttoptr i64 %13 to ptr
  %15 = icmp ugt ptr %14, inttoptr (i64 99 to ptr)
  store ptr %14, ptr %storemerge1.reg2mem, align 8
  br i1 %15, label %dec_label_pc_117eb, label %dec_label_pc_117ae

dec_label_pc_117eb:                               ; preds = %dec_label_pc_117ae
  %16 = load i64, ptr %2, align 8
  call void @printLongLongLine(i64 %16)
  call void @free(ptr %2)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  br i1 %18, label %dec_label_pc_11821, label %dec_label_pc_1181c

dec_label_pc_1181c:                               ; preds = %dec_label_pc_117eb
  call void @__stack_chk_fail()
  br label %dec_label_pc_11821

dec_label_pc_11821:                               ; preds = %dec_label_pc_1181c, %dec_label_pc_117eb
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

