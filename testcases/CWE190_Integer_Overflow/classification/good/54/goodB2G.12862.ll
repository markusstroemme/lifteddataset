@global_var_75b18 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon4() local_unnamed_addr {
dec_label_pc_38d7a:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = mul i32 %4, 32768
  %6 = call i32 @rand()
  %7 = xor i32 %6, %5
  %8 = sext i1 %2 to i32
  %storemerge.in = xor i32 %7, %8
  %9 = trunc i32 %storemerge.in to i16
  call void @anon0(i16 %9)
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_38e3e:
  call void @anon1(i16 %data)
  ret void
}

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_38e9e:
  call void @anon2(i16 %data)
  ret void
}

define void @anon2(i16 %data) local_unnamed_addr {
dec_label_pc_38efe:
  call void @anon3(i16 %data)
  ret void
}

define void @anon3(i16 %data) local_unnamed_addr {
dec_label_pc_38f74:
  %0 = icmp eq i16 %data, 32767
  br i1 %0, label %dec_label_pc_38fa6, label %dec_label_pc_38f8e

dec_label_pc_38f8e:                               ; preds = %dec_label_pc_38f74
  %1 = add i16 %data, 1
  %2 = sext i16 %1 to i32
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_38fb5

dec_label_pc_38fa6:                               ; preds = %dec_label_pc_38f74
  call void @printLine(ptr @global_var_75b18)
  br label %dec_label_pc_38fb5

dec_label_pc_38fb5:                               ; preds = %dec_label_pc_38fa6, %dec_label_pc_38f8e
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

