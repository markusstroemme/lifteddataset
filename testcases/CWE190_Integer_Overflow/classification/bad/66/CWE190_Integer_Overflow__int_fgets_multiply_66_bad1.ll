@global_var_819ae = external constant [16 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_f89a:
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_f8ff, label %dec_label_pc_f8ee

dec_label_pc_f8ee:                                ; preds = %dec_label_pc_f89a
  %5 = call i32 @atoi(ptr nonnull %2)
  br label %dec_label_pc_f90e

dec_label_pc_f8ff:                                ; preds = %dec_label_pc_f89a
  call void @printLine(ptr @global_var_819ae)
  br label %dec_label_pc_f90e

dec_label_pc_f90e:                                ; preds = %dec_label_pc_f8ff, %dec_label_pc_f8ee
  %6 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_f935, label %dec_label_pc_f930

dec_label_pc_f930:                                ; preds = %dec_label_pc_f90e
  call void @__stack_chk_fail()
  br label %dec_label_pc_f935

dec_label_pc_f935:                                ; preds = %dec_label_pc_f930, %dec_label_pc_f90e
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_fa45:
  %0 = ptrtoint ptr %dataArray to i64
  %sext = mul i64 %0, 4294967296
  %1 = ashr exact i64 %sext, 32
  %2 = add nsw i64 %1, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %dec_label_pc_fa77, label %dec_label_pc_fa65

dec_label_pc_fa65:                                ; preds = %dec_label_pc_fa45
  %6 = mul i32 %4, 2
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_fa77

dec_label_pc_fa77:                                ; preds = %dec_label_pc_fa65, %dec_label_pc_fa45
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

