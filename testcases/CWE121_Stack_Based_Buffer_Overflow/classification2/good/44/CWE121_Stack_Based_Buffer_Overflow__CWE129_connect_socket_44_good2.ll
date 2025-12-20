@global_var_b4d68 = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_12eb7:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %cond = icmp eq i32 %1, -1
  br i1 %cond, label %dec_label_pc_12fb9, label %dec_label_pc_12f0c

dec_label_pc_12f0c:                               ; preds = %dec_label_pc_12eb7
  %2 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %3 = call i32 @inet_addr(ptr @global_var_b4d68)
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @connect(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_12faf, label %dec_label_pc_12f63

dec_label_pc_12f63:                               ; preds = %dec_label_pc_12f0c
  %8 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %9 = add i32 %8, 1
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %dec_label_pc_12faf, label %dec_label_pc_12f8a

dec_label_pc_12f8a:                               ; preds = %dec_label_pc_12f63
  %11 = ptrtoint ptr %stack_var_-8 to i64
  %12 = sext i32 %8 to i64
  %13 = add i64 %11, -22
  %14 = add i64 %13, %12
  %15 = inttoptr i64 %14 to ptr
  store i8 0, ptr %15, align 1
  %16 = bitcast ptr %stack_var_-30 to ptr
  %17 = call i32 @atoi(ptr nonnull %16)
  br label %dec_label_pc_12faf

dec_label_pc_12faf:                               ; preds = %dec_label_pc_12f63, %dec_label_pc_12f8a, %dec_label_pc_12f0c
  %18 = call i32 @close(i32 %1)
  br label %dec_label_pc_12fb9

dec_label_pc_12fb9:                               ; preds = %dec_label_pc_12eb7, %dec_label_pc_12faf
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  br i1 %20, label %dec_label_pc_12fd9, label %dec_label_pc_12fd4

dec_label_pc_12fd4:                               ; preds = %dec_label_pc_12fb9
  call void @__stack_chk_fail()
  br label %dec_label_pc_12fd9

dec_label_pc_12fd9:                               ; preds = %dec_label_pc_12fd4, %dec_label_pc_12fb9
  ret void
}

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

