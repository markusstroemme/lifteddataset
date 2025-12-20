@global_var_6c628 = external constant [21 x i8]
@global_var_89238 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3175e:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_89238, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_317a2, label %dec_label_pc_31791

dec_label_pc_31791:                               ; preds = %dec_label_pc_3175e
  call void @printLine(ptr @global_var_6c628)
  br label %dec_label_pc_317c9

dec_label_pc_317a2:                               ; preds = %dec_label_pc_3175e
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 49)
  %4 = ptrtoint ptr %stack_var_-120 to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_317c9

dec_label_pc_317c9:                               ; preds = %dec_label_pc_317a2, %dec_label_pc_31791
  %7 = bitcast ptr %stack_var_-120 to ptr
  store i64 0, ptr %stack_var_-184, align 8
  %8 = bitcast ptr %stack_var_-184 to ptr
  %9 = call ptr @strcat(ptr nonnull %8, ptr nonnull %7)
  call void @printLine(ptr nonnull %7)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_3184e, label %dec_label_pc_31849

dec_label_pc_31849:                               ; preds = %dec_label_pc_317c9
  call void @__stack_chk_fail()
  br label %dec_label_pc_3184e

dec_label_pc_3184e:                               ; preds = %dec_label_pc_31849, %dec_label_pc_317c9
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

