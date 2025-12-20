@global_var_7c82d = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon1() local_unnamed_addr {
dec_label_pc_18361:
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
  br i1 %6, label %dec_label_pc_183a3, label %dec_label_pc_18399

dec_label_pc_18399:                               ; preds = %dec_label_pc_18361
  call void @exit(i32 -1)
  unreachable

dec_label_pc_183a3:                               ; preds = %dec_label_pc_18361
  %7 = bitcast ptr %stack_var_-56 to ptr
  call void @anon0(ptr nonnull %7)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_183cc, label %dec_label_pc_183c7

dec_label_pc_183c7:                               ; preds = %dec_label_pc_183a3
  call void @__stack_chk_fail()
  br label %dec_label_pc_183cc

dec_label_pc_183cc:                               ; preds = %dec_label_pc_183c7, %dec_label_pc_183a3
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_18487:
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %5, i64 0, i64 100)
  %6 = inttoptr i64 %4 to ptr
  %7 = call ptr @memcpy(ptr %6, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %8 = load i64, ptr %6, align 8
  call void @printLongLongLine(i64 %8)
  call void @free(ptr %6)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_18529, label %dec_label_pc_18524

dec_label_pc_18524:                               ; preds = %dec_label_pc_18487
  call void @__stack_chk_fail()
  br label %dec_label_pc_18529

dec_label_pc_18529:                               ; preds = %dec_label_pc_18524, %dec_label_pc_18487
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

