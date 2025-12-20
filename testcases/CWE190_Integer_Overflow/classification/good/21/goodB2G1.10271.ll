@global_var_86b78 = external constant [3 x i8]
@global_var_86b7b = external constant [21 x i8]
@global_var_86b90 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc2c8 = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_38270:
  %0 = load i32, ptr @global_var_bc2c8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_3829a, label %dec_label_pc_38289

dec_label_pc_38289:                               ; preds = %dec_label_pc_38270
  call void @printLine(ptr @global_var_86b7b)
  br label %dec_label_pc_382c8

dec_label_pc_3829a:                               ; preds = %dec_label_pc_38270
  %2 = icmp eq i32 %data, 2147483647
  br i1 %2, label %dec_label_pc_382b9, label %dec_label_pc_382a3

dec_label_pc_382a3:                               ; preds = %dec_label_pc_3829a
  %3 = add i32 %data, 1
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_382c8

dec_label_pc_382b9:                               ; preds = %dec_label_pc_3829a
  call void @printLine(ptr @global_var_86b90)
  br label %dec_label_pc_382c8

dec_label_pc_382c8:                               ; preds = %dec_label_pc_382b9, %dec_label_pc_382a3, %dec_label_pc_38289
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_382cb:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_86b78, ptr nonnull %stack_var_-20)
  store i32 0, ptr @global_var_bc2c8, align 4
  %3 = load i32, ptr %stack_var_-20, align 4
  call void @anon0(i32 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_38338, label %dec_label_pc_38333

dec_label_pc_38333:                               ; preds = %dec_label_pc_382cb
  call void @__stack_chk_fail()
  br label %dec_label_pc_38338

dec_label_pc_38338:                               ; preds = %dec_label_pc_38333, %dec_label_pc_382cb
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

