@badStatic = external local_unnamed_addr global i32

define ptr @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_58c49:
  %0 = load i32, ptr @badStatic, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_58c84, label %dec_label_pc_58c63

dec_label_pc_58c63:                               ; preds = %dec_label_pc_58c49
  %2 = bitcast ptr %data to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 99)
  %4 = ptrtoint ptr %data to i64
  %5 = add i64 %4, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_58c84

dec_label_pc_58c84:                               ; preds = %dec_label_pc_58c63, %dec_label_pc_58c49
  ret ptr %data
}

define void @anon0() local_unnamed_addr {
dec_label_pc_58c8a:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @badStatic, align 4
  %1 = bitcast ptr %stack_var_-120 to ptr
  %2 = call ptr @anon1(ptr nonnull %1)
  store i64 0, ptr %stack_var_-184, align 8
  %3 = call i32 @strlen(ptr %2)
  %4 = bitcast ptr %stack_var_-184 to ptr
  %5 = call ptr @strncpy(ptr nonnull %4, ptr %2, i32 %3)
  call void @printLine(ptr %2)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_58d6e, label %dec_label_pc_58d69

dec_label_pc_58d69:                               ; preds = %dec_label_pc_58c8a
  call void @__stack_chk_fail()
  br label %dec_label_pc_58d6e

dec_label_pc_58d6e:                               ; preds = %dec_label_pc_58d69, %dec_label_pc_58c8a
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

