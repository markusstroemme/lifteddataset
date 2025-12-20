@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_83a46 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1fc2a:
  %stack_var_-40 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_83a46)
  %3 = bitcast ptr %stack_var_-40 to ptr
  call void @anon1(ptr nonnull %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_1fc95, label %dec_label_pc_1fc90

dec_label_pc_1fc90:                               ; preds = %dec_label_pc_1fc2a
  call void @__stack_chk_fail()
  br label %dec_label_pc_1fc95

dec_label_pc_1fc95:                               ; preds = %dec_label_pc_1fc90, %dec_label_pc_1fc2a
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_1fd75:
  %0 = ptrtoint ptr %dataArray to i64
  %sext = mul i64 %0, 4294967296
  %1 = ashr exact i64 %sext, 32
  %2 = add nsw i64 %1, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %dec_label_pc_1fda7, label %dec_label_pc_1fd95

dec_label_pc_1fd95:                               ; preds = %dec_label_pc_1fd75
  %6 = mul i32 %4, 2
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_1fda7

dec_label_pc_1fda7:                               ; preds = %dec_label_pc_1fd95, %dec_label_pc_1fd75
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

