@global_var_7c82d = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon1() local_unnamed_addr {
dec_label_pc_13049:
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %2 = insertvalue [5 x ptr] undef, ptr %1, 0
  store [5 x ptr] %2, ptr %dataArray_-64, align 8
  %3 = bitcast ptr %dataArray_-64 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = icmp eq i64 %4, 0
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_1308b, label %dec_label_pc_13081

dec_label_pc_13081:                               ; preds = %dec_label_pc_13049
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1308b:                               ; preds = %dec_label_pc_13049
  %7 = bitcast ptr %stack_var_-56 to ptr
  call void @anon0(ptr nonnull %7)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_130b4, label %dec_label_pc_130af

dec_label_pc_130af:                               ; preds = %dec_label_pc_1308b
  call void @__stack_chk_fail()
  br label %dec_label_pc_130b4

dec_label_pc_130b4:                               ; preds = %dec_label_pc_130af, %dec_label_pc_1308b
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_1319b:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %dataArray to i64
  %3 = add i64 %2, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 100)
  %7 = add i64 %0, -816
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_131f6

dec_label_pc_131f6:                               ; preds = %dec_label_pc_1319b, %dec_label_pc_131f6
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %8 = ptrtoint ptr %storemerge1.reload to i64
  %9 = mul i64 %8, 8
  %10 = add i64 %9, %5
  %11 = add i64 %7, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i64, ptr %12, align 8
  %14 = inttoptr i64 %10 to ptr
  store i64 %13, ptr %14, align 8
  %15 = add i64 %8, 1
  %16 = inttoptr i64 %15 to ptr
  %17 = icmp ugt ptr %16, inttoptr (i64 99 to ptr)
  store ptr %16, ptr %storemerge1.reg2mem, align 8
  br i1 %17, label %dec_label_pc_13233, label %dec_label_pc_131f6

dec_label_pc_13233:                               ; preds = %dec_label_pc_131f6
  %18 = inttoptr i64 %5 to ptr
  %19 = load i64, ptr %18, align 8
  call void @printLongLongLine(i64 %19)
  call void @free(ptr %18)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %1, %20
  br i1 %21, label %dec_label_pc_13269, label %dec_label_pc_13264

dec_label_pc_13264:                               ; preds = %dec_label_pc_13233
  call void @__stack_chk_fail()
  br label %dec_label_pc_13269

dec_label_pc_13269:                               ; preds = %dec_label_pc_13264, %dec_label_pc_13233
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

