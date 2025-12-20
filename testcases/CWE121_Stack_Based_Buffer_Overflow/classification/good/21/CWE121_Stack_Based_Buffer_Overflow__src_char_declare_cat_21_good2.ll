@goodG2B2Static = external local_unnamed_addr global i32

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_32e6b:
  %0 = load i32, ptr @goodG2B2Static, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_32ea6, label %dec_label_pc_32e85

dec_label_pc_32e85:                               ; preds = %dec_label_pc_32e6b
  %2 = bitcast ptr %data to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 49)
  %4 = ptrtoint ptr %data to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_32ea6

dec_label_pc_32ea6:                               ; preds = %dec_label_pc_32e85, %dec_label_pc_32e6b
  ret ptr %data
}

define void @anon1() local_unnamed_addr {
dec_label_pc_32eac:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @goodG2B2Static, align 4
  %1 = bitcast ptr %stack_var_-120 to ptr
  %2 = call ptr @anon0(ptr nonnull %1)
  store i64 0, ptr %stack_var_-184, align 8
  %3 = bitcast ptr %stack_var_-184 to ptr
  %4 = call ptr @strcat(ptr nonnull %3, ptr %2)
  call void @printLine(ptr %2)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_32f7a, label %dec_label_pc_32f75

dec_label_pc_32f75:                               ; preds = %dec_label_pc_32eac
  call void @__stack_chk_fail()
  br label %dec_label_pc_32f7a

dec_label_pc_32f7a:                               ; preds = %dec_label_pc_32f75, %dec_label_pc_32eac
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

