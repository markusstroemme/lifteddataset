@global_var_7c820 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2d80c:
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 200)
  %2 = bitcast ptr %1 to ptr
  %3 = insertvalue [5 x ptr] undef, ptr %2, 0
  store [5 x ptr] %3, ptr %dataArray_-64, align 8
  %4 = bitcast ptr %dataArray_-64 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_2d84e, label %dec_label_pc_2d844

dec_label_pc_2d844:                               ; preds = %dec_label_pc_2d80c
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2d84e:                               ; preds = %dec_label_pc_2d80c
  %8 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_2d877, label %dec_label_pc_2d872

dec_label_pc_2d872:                               ; preds = %dec_label_pc_2d84e
  call void @__stack_chk_fail()
  br label %dec_label_pc_2d877

dec_label_pc_2d877:                               ; preds = %dec_label_pc_2d872, %dec_label_pc_2d84e
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_2d8fb:
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %5, i64 0, i64 50)
  %6 = inttoptr i64 %4 to ptr
  %7 = call ptr @memmove(ptr %6, ptr nonnull %stack_var_-424, i32 400)
  %8 = inttoptr i64 %4 to ptr
  %9 = load i32, ptr %8, align 4
  call void @printIntLine(i32 %9)
  call void @free(ptr %6)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_2d99b, label %dec_label_pc_2d996

dec_label_pc_2d996:                               ; preds = %dec_label_pc_2d8fb
  call void @__stack_chk_fail()
  br label %dec_label_pc_2d99b

dec_label_pc_2d99b:                               ; preds = %dec_label_pc_2d996, %dec_label_pc_2d8fb
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

