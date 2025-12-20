@global_var_3d0cc = external local_unnamed_addr global i32

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_10a47:
  %0 = load i32, ptr @global_var_3d0cc, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_10a82, label %dec_label_pc_10a61

dec_label_pc_10a61:                               ; preds = %dec_label_pc_10a47
  %2 = bitcast ptr %data to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 49)
  %4 = ptrtoint ptr %data to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_10a82

dec_label_pc_10a82:                               ; preds = %dec_label_pc_10a61, %dec_label_pc_10a47
  ret ptr %data
}

define void @anon1() local_unnamed_addr {
dec_label_pc_10a88:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_10ac2, label %dec_label_pc_10ab8

dec_label_pc_10ab8:                               ; preds = %dec_label_pc_10a88
  call void @exit(i32 -1)
  unreachable

dec_label_pc_10ac2:                               ; preds = %dec_label_pc_10a88
  %4 = bitcast ptr %1 to ptr
  store i32 1, ptr @global_var_3d0cc, align 4
  %5 = call ptr @anon0(ptr %4)
  store i64 0, ptr %stack_var_-72, align 8
  %6 = bitcast ptr %stack_var_-72 to ptr
  %7 = call ptr @strcat(ptr nonnull %6, ptr %5)
  call void @printLine(ptr %5)
  %8 = bitcast ptr %5 to ptr
  call void @free(ptr %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_10b52, label %dec_label_pc_10b4d

dec_label_pc_10b4d:                               ; preds = %dec_label_pc_10ac2
  call void @__stack_chk_fail()
  br label %dec_label_pc_10b52

dec_label_pc_10b52:                               ; preds = %dec_label_pc_10b4d, %dec_label_pc_10ac2
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_24c88:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_24cab, label %dec_label_pc_24c9f

dec_label_pc_24c9f:                               ; preds = %dec_label_pc_24c88
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_24cab

dec_label_pc_24cab:                               ; preds = %dec_label_pc_24c9f, %dec_label_pc_24c88
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

